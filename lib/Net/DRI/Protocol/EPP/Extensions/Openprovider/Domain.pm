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
			   update => [ \&update ]
         );
	
	return { 'domain' => \%tmp };
}

sub capabilities_add { return ('domain_update',['set']); }

####################################################################################################

sub build_command_extension
{
 my ($mes,$epp,$tag)=@_;
 
 return $mes->command_extension_register($tag,sprintf('xmlns:op="%s"',$mes->nsattrs('op')));
}

sub update
{
  my ($epp,$domain,$todo)=@_;
  my $mes=$epp->message();

  my $whoisprivacy = $todo->set('whoisprivacy');
  return unless defined($whoisprivacy);

  my $eid=build_command_extension($mes,$epp,'op:update');

  my @e;

 return unless (ref($whoisprivacy) eq "HASH");

 foreach my $key (keys %$whoisprivacy) {
        push @e,['op:'.$key,$whoisprivacy->{$key}];
 }

 $mes->command_extension($eid,['op:domain',@e]);
}

1;