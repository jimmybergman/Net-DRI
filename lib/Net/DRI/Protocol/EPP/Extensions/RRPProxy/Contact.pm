## Domain Registry Interface, RRPProxy Contact extensions
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
####################################################################################################

package Net::DRI::Protocol::EPP::Extensions::RRPProxy::Contact;

use strict;
use warnings;

use Net::DRI::Util;
use Net::DRI::Protocol::EPP::Util;

our $VERSION = do { my @r = ( q$Revision: 1.3 $ =~ /\d+/gmx ); sprintf( "%d" . ".%02d" x $#r, @r ); };

=pod

=head1 NAME

Net::DRI::Protocol::EPP::Extensions::RRPProxy::Contact - RRPProxy Contact Extensions for Net::DRI

=head1 DESCRIPTION

Please see the README file for details.

=head1 SUPPORT

For now, support questions should be sent to:

E<lt>netdri@dotandco.comE<gt>

Please also see the SUPPORT file in the distribution.

=head1 SEE ALSO

E<lt>http://www.dotandco.com/services/software/Net-DRI/E<gt>

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

###################################################################################################

sub register_commands
{
 my ($class,$version)=@_;
 my %tmp=(
           #info   => [ undef, \&info_parse ],
           create => [ \&create, undef ],
           update => [ \&update, undef ],
         );

 return { 'contact' => \%tmp };
}

####################################################################################################

sub build_command_extension
{
 my ($mes,$epp,$tag)=@_;
 return $mes->command_extension_register($tag,sprintf('xmlns:keysys="%s"',$mes->nsattrs('keysys')));
}

########### Query commands

# sub info_parse
# {
 # my ($po,$otype,$oaction,$oname,$rinfo)=@_;
 # my $mes=$po->message();
 # return unless $mes->is_success();

 # my $contact=$rinfo->{contact}->{$oname}->{self};
 # my $ext=$mes->node_extension();

 # return unless (defined($ext) && $ext && $ext->getFirstChild());
 # my %tmp=map { split(/=/,$_) } split(/\s+/,$ext->getFirstChild()->getData());

 # $contact->application_purpose($tmp{AppPurpose}) if exists($tmp{AppPurpose});
 # $contact->nexus_category($tmp{NexusCategory})   if exists($tmp{NexusCategory});
# }

############ Transform commands

sub add_extensions
{
 my ($epp,$contact,$op)=@_;
 my $mes=$epp->message();

 ## validate() has already been called
 my $custom_fields=$contact->custom_fields();

 return unless (defined($custom_fields) and ref($custom_fields) eq 'HASH');
 my $eid=build_command_extension($mes,$epp,'keysys:'.$op);
 my @e;
 
 foreach my $key (keys %$custom_fields) {
	push @e,['keysys:'.$key,$custom_fields->{$key}];

 }
 $mes->command_extension($eid,['keysys:contact',@e]);
}

sub create
{
 my ($epp,$contact)=@_;
 return add_extensions($epp,$contact,'create'); 
}

sub update
{
 my ($epp,$contact,$todo)=@_;
 my $newc=$todo->set('info');
 return unless $newc;
 return add_extensions($epp,$newc,'update');
}

####################################################################################################
1;
