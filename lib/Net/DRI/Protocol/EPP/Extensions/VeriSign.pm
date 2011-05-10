## Domain Registry Interface, VeriSign EPP extensions
##
## Copyright (c) 2006,2008-2010 Patrick Mevzek <netdri@dotandco.com>. All rights reserved.
##
## This file is part of Net::DRI
##
## Net::DRI is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 2 of the License, or
## (at your option) any later version.
##
## See the LICENSE file that comes with this distribution for more details.
####################################################################################################

package Net::DRI::Protocol::EPP::Extensions::VeriSign;

use strict;
use warnings;

use base qw/Net::DRI::Protocol::EPP/;
use Net::DRI::Data::Contact::JOBS;

=pod

=head1 NAME

Net::DRI::Protocol::EPP::Extensions::VeriSign - VeriSign EPP extensions for Net::DRI

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

Copyright (c) 2006,2008-2010 Patrick Mevzek <netdri@dotandco.com>.
All rights reserved.

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

See the LICENSE file that comes with this distribution for more details.

=cut

####################################################################################################

sub setup
{
 my ($self,$rp)=@_;
 $self->default_parameters()->{subproductid}=$rp->{default_product} || '_auto_';
 $self->default_parameters()->{whois_info}=0;
 $self->factories('contact',sub { return Net::DRI::Data::Contact::JOBS->new(@_); }) if $self->has_module('Net::DRI::Protocol::EPP::Extensions::VeriSign::JobsContact');
 return;
}

## List of VeriSign extensions: http://www.verisign.com/domain-name-services/current-registrars/epp-sdk/index.html
## and documentation: http://www.verisign.com/domain-name-services/domain-information-center/domain-name-resources/
sub default_extensions
{ 
 my ($self,$rp)=@_;
 my @c=qw/VeriSign::Sync VeriSign::PollLowBalance VeriSign::PollRGP VeriSign::IDNLanguage VeriSign::WhoisInfo VeriSign::WhoWas VeriSign::Suggestion GracePeriod SecDNS/;
 push @c,'VeriSign::JobsContact' if exists $rp->{default_product} && defined $rp->{default_product} && $rp->{default_product} eq 'dotJOBS';
 return @c;
}

## Extensions not loaded by default: NameStore, PremiumDomain

####################################################################################################
1;
