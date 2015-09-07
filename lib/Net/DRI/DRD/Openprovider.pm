## Domain Registry Interface, RRR Proxy Registry Driver for multiple TLDs
#
#########################################################################################

package Net::DRI::DRD::Openprovider;

use strict;
use warnings;

use base qw/Net::DRI::DRD/;

use DateTime::Duration;
use DateTime;

our $VERSION=do { my @r=(q$Revision: 0.1 $=~/\d+/g); sprintf("%d".".%02d" x $#r, @r); };

sub new
{
 my $class=shift;
 my $self=$class->SUPER::new(@_);
 $self->{info}->{host_as_attr}=1;
 $self->{info}->{contact_i18n}=1; ## LOC only
 bless($self,$class);
 return $self;
}

sub periods      { return map { DateTime::Duration->new(years => $_) } (1..10); }
sub name         { return 'Openprovider'; }
sub tlds         { return (qw/*/); }
sub object_types { return ('domain', 'contact'); }
sub profile_types { return qw/epp/; }

sub transport_protocol_default
{
 my ($self,$type)=@_;

 return ('Net::DRI::Transport::HTTP',{protocol_connection=>'Net::DRI::Protocol::EPP::Extensions::HTTP'},'Net::DRI::Protocol::EPP::Extensions::Openprovider',{}) if $type eq 'epp';
 return;
}

1;

