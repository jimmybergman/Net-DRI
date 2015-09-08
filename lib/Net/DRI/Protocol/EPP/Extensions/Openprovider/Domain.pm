package Net::DRI::Protocol::EPP::Extensions::Openprovider::Domain;

use strict;
use warnings;

use Net::DRI::Exception;
use Net::DRI::Util;
use Net::DRI::Data::Hosts;
use Net::DRI::Protocol::EPP::Util;

=pod

=head1 NAME

Net::DRI::Protocol::EPP::Extensions::Openprovider::Domain - Openprovider EPP Domain extension commands for Net::DRI

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

sub capabilities_add { return ('domain_update',['set']); }

####################################################################################################

sub build_command_extension
{
 my ($mes,$epp,$tag)=@_;
 
 return $mes->command_extension_register('op:ext',sprintf('xmlns:op="%s"',$mes->nsattrs('op')));
}

sub create
{
  my ($epp,$domain,$rd)=@_;
 my $mes=$epp->message();

  my $attributes = $rd->{registry_specific_attributes};
  return unless defined($attributes);

  my $eid=build_command_extension($mes,$epp);
  

  my @e;

 return unless (ref($attributes) eq "HASH");

 foreach my $key (keys %$attributes) {
        push @e,['op:'.$key,$attributes->{$key}];
 }
 
 my $body = $mes->command_body();
 $body->{domain:authInfo}->{domain:pw} = '';
 $mes->command_body($body);
 
 my @f;
 push @f,['op:domain', @e];

 $mes->command_extension($eid,['op:create',@f]);
}

sub transfer_request{
 my ($epp,$domain,$rd)=@_;
 my $mes=$epp->message();
 
 my @d=Net::DRI::Protocol::EPP::Util::domain_build_command($mes,['transfer',{'op'=>'request'}],$domain);
 push @d,Net::DRI::Protocol::EPP::Util::build_period($rd->{duration}) if Net::DRI::Util::has_duration($rd);
 push @d,Net::DRI::Protocol::EPP::Util::domain_build_authinfo($epp,$rd->{auth}) if Net::DRI::Util::has_auth($rd);
 
 $mes->command_body(\@d);
 
 return unless Net::DRI::Util::has_contact($rd);
 
 my $eid=build_command_extension($mes,$epp);
 
 my @e;
 
 my $cs=$rd->{contact};
  my @o=$cs->get('registrant');
 
 push @e,['op:registrant',$o[0]->srid()] if (@o && Net::DRI::Util::isa_contact($o[0]));
  
 my %r=map { $_ => 1 } $epp->core_contact_types();
 foreach my $t (sort(grep { exists($r{$_}) } $cs->types()))
 {
  my @c=$cs->get($t);
  push @e,map { ['op:contact',$_->srid(),{'type'=>$t}] } @c;
 }
 
 my $ns=$rd->{ns};
 if(Net::DRI::Util::isa_hosts($ns)){
	push @e,['op:ns', build_ns($epp,$ns,$mes)];
 }
 
 my @f;
 push @f,['op:domain', @e];
 
 $mes->command_extension($eid,['op:transfer',@f]);
}

sub build_ns
{
 my ($epp,$ns,$mes)=@_;

 my @d;

  foreach my $i (1..$ns->count())
  {
   my ($n,$r4,$r6)=$ns->get_details($i);
   my @h;
   push @h,['domain:hostName',$n];
      
   push @h,map { ['domain:hostAddr',$_,{ip=>'v4'}] } @$r4 if @$r4;
   push @h,map { ['domain:hostAddr',$_,{ip=>'v6'}] } @$r6 if @$r6;
   
   my $attrs;
   $attrs->{'xmlns:domain'} = sprintf('%s',$mes->nsattrs('domain'));
   $attrs->{'xsi:schemaLocation'} = sprintf('%s',$mes->nsattrs('domain')).' '.$mes->nsattrs('domain');

   push @d,['domain:hostAttr',@h,$attrs];
  }

  return @d;

}

1;