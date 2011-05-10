## Domain Registry Interface, CentralNic Registry Driver
##
## Copyright (c) 2008-2010 Patrick Mevzek <netdri@dotandco.com>. All rights reserved.
##
## This file is part of Net::DRI
##
## Net::DRI is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 2 of the License, or
## (at your option) any later version.
##
## See the LICENSE file that comes with this distribution for more details.
#########################################################################################

package Net::DRI::DRD::CentralNic;

use strict;
use warnings;

use base qw/Net::DRI::DRD/;

use DateTime::Duration;
use DateTime;

use Net::DRI::Util;

=pod

=head1 NAME

Net::DRI::DRD::CentralNic - CentralNic (.LA .EU.COM .UK.COM etc.) Registry driver for Net::DRI

=head1 DESCRIPTION

Please see the README file for details.

=head1 SUPPORT

For now, support questions should be sent to:

E<lt>netdri@dotandco.comE<gt>

Please also see the SUPPORT file in the distribution.

=head1 SEE ALSO

E<lt>http://www.dotandco.com/services/software/Net-DRI/E<gt>

=head1 AUTHOR

Patrick Mevzek, E<lt>netdri@dotandco.comE<gt>

=head1 COPYRIGHT

Copyright (c) 2008-2010 Patrick Mevzek <netdri@dotandco.com>.
All rights reserved.

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

See the LICENSE file that comes with this distribution for more details.

=cut

####################################################################################################

sub new
{
 my $class=shift;
 my $self=$class->SUPER::new(@_);
 $self->{info}->{host_as_attr}=0;
 $self->{info}->{contact_i18n}=2;       ## INT only
 bless($self,$class);
 return $self;
}

sub periods      { return map { DateTime::Duration->new(years => $_) } (2..10); }
sub name         { return 'CentralNic'; }
sub tlds         { return (qw/la uk.net se.net gb.net/,map { $_.'.com' } qw/eu uk us cn de jpn kr no za br ar ru sa se hu gb qc uy ae gr/); } ## see https://www.centralnic.com/names/domains
sub object_types { return ('domain','ns','contact'); }
sub profile_types { return qw/epp/; }

sub transport_protocol_default
{
 my ($self,$type)=@_;

 return ('Net::DRI::Transport::Socket',{},'Net::DRI::Protocol::EPP::Extensions::CentralNic',{}) if $type eq 'epp';
 return;
}

####################################################################################################

sub verify_name_domain
{
 my ($self,$ndr,$domain,$op)=@_;
 return $self->_verify_name_rules($domain,$op,{check_name => 1,
                                               my_tld => 1,
                                               min_length => 3,
                                              });
}

sub verify_duration_transfer
{
 my ($self,$ndr,$duration,$domain,$op)=@_;

 return $self->_verify_duration_transfer_15days($ndr,$duration,$domain,$op);
}

sub verify_duration_renew
{
 my ($self,$ndr,$duration,$domain,$curexp)=@_;

 return 0 unless (defined $duration && defined $curexp && Net::DRI::Util::is_class($curexp,'DateTime'));
 my $newexp=$curexp+$duration; ## New expiration
 my $max=DateTime->new(year => 2037, month => 1, day => 1, time_zone => $curexp->time_zone()->name());
 my $cmp=DateTime->compare($newexp,$max);
 return 2 unless ($cmp == -1); ## we must have curexp+duration < 2037
 return 0; ## everything ok
}

####################################################################################################

sub domain_release
{
 my ($self,$ndr,$domain,$rd)=@_;
 $self->enforce_domain_name_constraints($ndr,$domain,'release');

 return $ndr->process('domain','release',[$domain,$rd]);
}

####################################################################################################
1;
