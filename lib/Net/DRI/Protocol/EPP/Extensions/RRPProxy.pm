package Net::DRI::Protocol::EPP::Extensions::RRPProxy;

use strict;

use base qw/Net::DRI::Protocol::EPP/;

our $VERSION=do { my @r=(q$Revision: 0.1 $=~/\d+/g); sprintf("%d".".%02d" x $#r, @r); };


=pod

=head1 NAME

Net::DRI::Protocol::EPP::Extensions::RRRProxy - RRRProxy EPP extensions for Net::DRI

=cut


####################################################################################################

sub setup
{
 my ($self,$rp)=@_;
 $self->ns({keysys => ['http://www.key-systems.net/epp/keysys-1.0','']});
 return;
}

sub default_extensions { return qw/RRPProxy::Domain/; }

####################################################################################################
1;
