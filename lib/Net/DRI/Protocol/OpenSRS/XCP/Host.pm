## Domain Registry Interface, OpenSRS XCP Host commands
##
## Copyright (c) 2008,2009 Patrick Mevzek <netdri@dotandco.com>. All rights reserved.
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

package Net::DRI::Protocol::OpenSRS::XCP::Host;

use strict;
use warnings;

use Net::DRI::Exception;
use Net::DRI::Util;

our $VERSION=do { my @r=(q$Revision: 1.2 $=~/\d+/g); sprintf("%d".".%02d" x $#r, @r); };

=pod

=head1 NAME

Net::DRI::Protocol::OpenSRS::XCP::Host - OpenSRS XCP Host commands for Net::DRI

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

Copyright (c) 2008,2009 Patrick Mevzek <netdri@dotandco.com>.
All rights reserved.

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

See the LICENSE file that comes with this distribution for more details.

=cut

####################################################################################################

sub register_commands
{
 my ($class,$version)=@_;
 my %tmp=(
          check => [\&check, \&check_parse ],
          create => [ \&create ],
          delete => [ \&delete ],
          update => [ \&update ],
         );

 return { 'host' => \%tmp };
}

sub build_msg_cookie
{
 my ($msg,$action,$cookie,$regip)=@_;
 my %r=(action=>$action,object=>'nameserver',cookie=>$cookie);
 $r{registrant_ip}=$regip if defined($regip);
 $msg->command(\%r);
}

sub check
{
 my ($xcp,$ns)=@_;
 my $msg=$xcp->message();
 my %r=(action=>'registry_check_nameserver',object=>'nameserver');
 $msg->command(\%r);
 $msg->command_attributes({fqdn => scalar($ns->get_details(1))});
}

sub check_parse
{
 my ($xcp,$otype,$oaction,$oname,$rinfo)=@_;
 my $mes=$xcp->message();
 return unless $mes->is_success();

 $rinfo->{host}->{$oname}->{action} = 'check';
 $rinfo->{host}->{$oname}->{exist} = ($mes->response_code() == 200) ? 1 : 0;
}

sub create
{
 my ($xcp,$ns,$rd)=@_;

 Net::DRI::Exception::usererr_insufficient_parameters('A cookie is needed for host_create') unless Net::DRI::Util::has_key($rd,'cookie');
 Net::DRI::Exception::usererr_insufficient_parameters('host is mandatory') unless Net::DRI::Util::isa_hosts($ns);

 my $msg=$xcp->message();
 build_msg_cookie($msg,'create',$rd->{cookie},$rd->{registrant_ip});

 my $attr = {};
 my @details = $ns->get_details(1);
 $attr->{name} = $details[0];
 my $ips = $details[1];
 Net::DRI::Exception::usererr_insufficient_parameters('host has to have at least one IPv4 address') unless defined($ips) && ref($ips) eq "ARRAY" && scalar(@$ips) > 0;
 $attr->{ipaddress} = $ips->[0];

 $msg->command_attributes($attr);
}

sub update
{
 my ($xcp,$ns,$todo,$rd)=@_;

 Net::DRI::Exception::usererr_insufficient_parameters('A cookie is needed for host_update') unless Net::DRI::Util::has_key($rd,'cookie');
 Net::DRI::Exception::usererr_invalid_parameters($todo.' must be a non empty Net::DRI::Data::Changes object') unless Net::DRI::Util::isa_changes($todo);

 my $change_to_ip = undef;
 if (Net::DRI::Util::isa_hosts($todo->set('ip'))) {
  my @details = $todo->set('ip')->get_details(1);
  $change_to_ip = $details[1];
 }

 Net::DRI::Exception::usererr_invalid_parameters('OpenSRS only supports nameservers with exactly one IPv4 address') unless defined($change_to_ip) && ref($change_to_ip) eq "ARRAY" && scalar(@$change_to_ip) == 1;

 my $msg=$xcp->message();
 build_msg_cookie($msg,'modify',$rd->{cookie},$rd->{registrant_ip});
 $msg->command_attributes({ name => scalar($ns->get_details(1)), ipaddress => $change_to_ip->[0] });
}

sub delete
{
 my ($xcp,$ns,$rd)=@_;

 Net::DRI::Exception::usererr_insufficient_parameters('host is mandatory') unless Net::DRI::Util::isa_hosts($ns);
 Net::DRI::Exception::usererr_insufficient_parameters('A cookie is needed for host_delete') unless Net::DRI::Util::has_key($rd,'cookie');

 my $msg=$xcp->message();
 build_msg_cookie($msg,'delete',$rd->{cookie},$rd->{registrant_ip});

 $msg->command_attributes({ name => scalar($ns->get_details(1)) });
}

####################################################################################################
1;
