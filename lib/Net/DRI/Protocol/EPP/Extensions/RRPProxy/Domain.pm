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
		   transfer_request => [ \&transfer_request ],
	   update => [ \&update ]
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

  my $attributes = $rd->{registry_specific_attributes};
  return unless defined($attributes);

  my $eid=build_command_extension($mes,$epp,'keysys:create');
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

sub transfer_request{
 my ($epp,$domain,$rd)=@_;
 my $mes=$epp->message();
 
 my @d=Net::DRI::Protocol::EPP::Util::domain_build_command($mes,['transfer',{'op'=>'request'}],$domain);
 push @d,Net::DRI::Protocol::EPP::Util::build_period($rd->{duration}) if Net::DRI::Util::has_duration($rd);
 push @d,Net::DRI::Protocol::EPP::Util::domain_build_authinfo($epp,$rd->{auth}) if Net::DRI::Util::has_auth($rd);
 
 $mes->command_body(\@d);
 
 return unless Net::DRI::Util::has_contact($rd);
 
 my $eid=build_command_extension($mes,$epp,'keysys:transfer');
 
 my @e;
 
 my $cs=$rd->{contact};
 my @o=$cs->get('registrant'); 
 push @e,['keysys:ownercontact0',$o[0]->srid()] if (@o && Net::DRI::Util::isa_contact($o[0]));
 
 @o=$cs->get('tech'); 
 push @e,['keysys:techcontact0',$o[0]->srid()] if (@o && Net::DRI::Util::isa_contact($o[0]));
 
 $mes->command_extension($eid,['keysys:domain',@e]);
}

1;
