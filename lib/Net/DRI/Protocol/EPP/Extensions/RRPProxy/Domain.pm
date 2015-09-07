package Net::DRI::Protocol::EPP::Extensions::RRPProxy::Domain;

use strict;
use warnings;

use Net::DRI::Exception;
use Net::DRI::Util;
use Net::DRI::Data::Hosts;
use Net::DRI::Protocol::EPP::Util;

=pod

=head1 NAME

Net::DRI::Protocol::EPP::Extensions::RRPProxy::Domain - RRPProxy EPP Domain extension commands for Net::DRI

=cut


####################################################################################################

sub register_commands
{
 my ($class,$version)=@_;
 my %tmp=(
           create => [ \&create ],
	   update => [ \&update ],
         );

 return { 'domain' => \%tmp };
}

sub capabilities_add { return ('domain_update','whoisprivacy',['set']); }

####################################################################################################

sub build_command_extension
{
 my ($mes,$epp,$tag)=@_;
 return $mes->command_extension_register($tag,sprintf('xmlns:keysys="%s"',$mes->nsattrs('keysys')));
}

sub create
{
 my ($epp,$domain,$rd)=@_;
 my $mes=$epp->message();

 my @d=Net::DRI::Protocol::EPP::Util::domain_build_command($mes,'create',$domain);
 my $def = $epp->default_parameters();

 if ($def && (ref($def) eq 'HASH') && exists($def->{domain_create}) && (ref($def->{domain_create}) eq 'HASH'))
 {
  $rd={} unless ($rd && (ref($rd) eq 'HASH') && keys(%$rd));
  while(my ($k,$v)=each(%{$def->{domain_create}}))
  {
   next if exists($rd->{$k});
   $rd->{$k}=$v
  }
 }

 ## Period, OPTIONAL
 push @d,Net::DRI::Protocol::EPP::Util::build_period($rd->{duration}) if Net::DRI::Util::has_duration($rd);

 ## Contacts, all OPTIONAL
 if (Net::DRI::Util::has_contact($rd))
 {
  my $cs=$rd->{contact};
  my @o=$cs->get('registrant');
  push @d,['domain:registrant',$o[0]->srid()] if (@o);
  push @d,Net::DRI::Protocol::EPP::Util::build_core_contacts($epp,$cs);
 }

 ## AuthInfo
 Net::DRI::Exception::usererr_insufficient_parameters("authInfo is mandatory") unless (Net::DRI::Util::has_auth($rd));
 push @d,Net::DRI::Protocol::EPP::Util::domain_build_authinfo($epp,$rd->{auth});
 $mes->command_body(\@d);

 return unless exists($rd->{'registry_specific_attributes'});

 my $eid=build_command_extension($mes,$epp,'keysys:create');

 my $attributes=$rd->{'registry_specific_attributes'};
 my @e;
 
 return unless (ref($attributes) eq "HASH");

 foreach my $key (keys %$attributes) {
	push @e,['keysys:'.$key,$attributes->{$key}];
 }

 $mes->command_extension($eid,['keysys:domain',@e]);
}

sub update
{
  my ($epp,$domain,$todo)=@_;
  my $mes=$epp->message();

  my $whoisprivacy = $todo->set('whoisprivacy');
  return unless defined($whoisprivacy);

  my $eid=build_command_extension($mes,$epp,'keysys:update');

  my @e;

 return unless (ref($whoisprivacy) eq "HASH");

 foreach my $key (keys %$whoisprivacy) {
        push @e,['keysys:'.$key,$whoisprivacy->{$key}];
 }

 $mes->command_extension($eid,['keysys:domain',@e]);
}

1;
