package Net::DRI::Protocol::EPP::Extensions::Openprovider;

use strict;

use base qw/Net::DRI::Protocol::EPP/;

our $VERSION=do { my @r=(q$Revision: 0.1 $=~/\d+/g); sprintf("%d".".%02d" x $#r, @r); };


=pod

=head1 NAME

Net::DRI::Protocol::EPP::Extensions::Openprovider - Openprovider EPP extensions for Net::DRI

=cut


####################################################################################################

sub setup
{
 my ($self,$rp)=@_;
 $self->ns({op => ['http://www.openprovider.nl/epp/xml/opprov-1.0','']});
 
 $self->default_parameters({domain_create => { auth => { pw => '' } } }); ## domain:authInfo is not used by Openprovider
 
 $self->default_parameters({contact_update => {info => {name => ''}}});
 return;
}

sub default_extensions { return qw/Openprovider::Domain/; }

####################################################################################################
1;
