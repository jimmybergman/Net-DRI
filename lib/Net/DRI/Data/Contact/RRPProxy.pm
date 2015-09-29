## Domain Registry Interface, Handling of contact data for .SE
##
## Copyright (c) 2015 Atomia AB<lt>http://atomia.comE<gt>,
##                    Mladen Gligorijevic<lt>mladen.gligorijevic@atomia.comE<gt>
##                    All rights reserved.
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
#########################################################################################

package Net::DRI::Data::Contact::RRPProxy;

use strict;
use warnings;
use base qw/Net::DRI::Data::Contact/;
use Net::DRI::Exception;

our $VERSION=do { my @r=(q$Revision: 1.6 $=~/\d+/g); sprintf("%d".".%02d" x $#r, @r); };

__PACKAGE__->register_attributes(qw(orgno vatno custom_fields));

=pod

=head1 NAME

Net::DRI::Data::Contact::RRPProxy - Handle RRPProxy contact data for Net::DRI

=head1 DESCRIPTION

This subclass of Net::DRI::Data::Contact adds accessors and validation for
.SE specific data.

=head1 METHODS

The following accessors/mutators can be called in chain, as they all return the object itself.
The class also have all the accessors/mutators Net::DRI::Data::Contact has.

=head2 orgno()

    Organization registration number for companies or social security number for
    individuals on the form [<CC>]<no> where <CC> is the country code and <nr> is the
    organization registration number or the social security number (mandatory)

=head1 SUPPORT

For now, support questions should be sent to:

E<lt>netdri@dotandco.comE<gt>

Please also see the SUPPORT file in the distribution.

=head1 SEE ALSO

http://www.dotandco.com/services/software/Net-DRI/

=head1 AUTHOR

Mladen Gligorijevic<lt>mladen.gligorijevic@atomia.comE<gt>

=head1 COPYRIGHT

Copyright (c) 2015 Atomia AB<lt>http://atomia.comE<gt>,
Mladen Gligorijevic<lt>mladen.gligorijevic@atomia.comE<gt>
All rights reserved.

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

See the LICENSE file that comes with this distribution for more details.

=cut

####################################################################################################

sub validate
{
 my ($self,$change)=@_;
 $change||=0;
 my @errs;

 # call parent validate, will trigger an Exception if problem
 $self->SUPER::validate($change); ## will trigger an Exception if problem

 # validate our extensions
 push @errs, 'orgno' if ( defined($self->orgno()) && $self->orgno() !~ m/^.+$/ );
 push @errs, 'vatno' if ( defined($self->vatno()) && $self->vatno() !~ m/^.+$/ );
 push @errs, 'custom_fields' if ( defined($self->custom_fields()) && ref($self->custom_fields()) ne "HASH" );

 # throw exception if errors detected
 Net::DRI::Exception::usererr_invalid_parameters( 'Invalid contact information: ' . join( '/', @errs ) ) if @errs;

 # done, everything ok
 return 1;
}

####################################################################################################
1;
