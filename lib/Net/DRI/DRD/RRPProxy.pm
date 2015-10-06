## Domain Registry Interface, RRR Proxy Registry Driver for multiple TLDs
#
#########################################################################################

package Net::DRI::DRD::RRPProxy;

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
 $self->{info}->{host_as_attr}=0;
 $self->{info}->{contact_i18n}=1; ## LOC only
 bless($self,$class);
 return $self;
}

sub periods      { return map { DateTime::Duration->new(years => $_) } (1..5); }
sub name         { return 'RRPProxy'; }
sub tlds         { return (qw/*/); }
sub object_types { return ('domain','ns','contact'); }
sub profile_types { return qw/epp/; }

sub verify_name_domain
{
        my ($self,$ndr,$domain,$op)=@_;

        return $self->_verify_name_rules($domain,$op,{ check_name => 1, check_name_dots => [1,2] });
}

sub transport_protocol_default
{
 my ($self,$type)=@_;

 return ('Net::DRI::Transport::Socket',{},'Net::DRI::Protocol::EPP::Extensions::RRPProxy',{}) if $type eq 'epp';
 return;
}

1;

