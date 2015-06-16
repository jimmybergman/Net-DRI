## Domain Registry Interface, OpenSRS XCP Status commands
##
## Copyright (c) 2005,2007,2008 Patrick Mevzek <netdri@dotandco.com>. All rights reserved.
##
## This file is part of Net::DRI
##
## Net::DRI is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 2 of the License, or
## (at your option) any later version.
##
## See the LICENSE file that comes with this distribution for more details.
#
# 
#
####################################################################################################

package Net::DRI::Protocol::OpenSRS::XCP::Status;

use strict;

use Net::DRI::Exception;

use base qw(Net::DRI::Protocol::EPP::Core::Status);

our $VERSION=do { my @r=(q$Revision: 1.6 $=~/\d+/g); sprintf("%d".".%02d" x $#r, @r); };

=pod

=head1 NAME

Net::DRI::Protocol::EPP::Core::Status - EPP Status for Net::DRI

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

Copyright (c) 2005,2007,2008 Patrick Mevzek <netdri@dotandco.com>.
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
  
 my $self=$class->SUPER::new(undef);

 my %s=('delete'   => 'clientDeleteProhibited',
        'renew'    => 'clientRenewProhibited',
        'update'   => 'clientUpdateProhibited',
        'transfer' => 'clientTransferProhibited',
        'publish'  => 'clientHold',
        'whois_protection' => 'clientWhoisProhibited'
       );
 $self->_register_pno(\%s);
 
 my $msg=shift;
 return $self unless defined($msg);

 if (ref($msg) eq 'ARRAY')
 {
  $self->add(@$msg);
 } else
 {
  Net::DRI::Exception::err_invalid_parameters();
 }

 return $self;
}

sub is_core_status
{
 return (shift=~m/^client(?:Hold|(?:Delete|Renew|Update|Transfer|Whois)Prohibited)$/);
}

sub can_whois { return shift->has_not('clientWhoisProhibited'); }

####################################################################################################
1;
