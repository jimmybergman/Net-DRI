## Domain Registry Interface, Openprovider Contact extensions
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

package Net::DRI::Protocol::EPP::Extensions::Openprovider::Contact;

use strict;
use warnings;

use Net::DRI::Util;
use Net::DRI::Protocol::EPP::Util;
use Data::Dumper;

our $VERSION = do { my @r = ( q$Revision: 1.3 $ =~ /\d+/gmx ); sprintf( "%d" . ".%02d" x $#r, @r ); };

=pod

=head1 NAME

Net::DRI::Protocol::EPP::Extensions::Openprovider::Contact - Openprovider Contact Extensions for Net::DRI

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
           info   => [ undef, \&info_parse ],
           create => [ \&create, undef ],
           update => [ \&update, undef ]
         );

 return { 'contact' => \%tmp };
}

####################################################################################################

sub build_command_extension
{
 my ($mes,$epp)=@_;
 
 return $mes->command_extension_register('op:ext',sprintf('xmlns:op="%s"',$mes->nsattrs('op')));
}

########### Query commands

sub info_parse
{
 my ($po,$otype,$oaction,$oname,$rinfo)=@_;
 my $mes=$po->message();
 #die 'MLD_EXC:'.Dumper($mes);
 return unless $mes->is_success();

 my $h = {};
 my $ns = $mes->ns('op');
 my $ext=$mes->get_extension('op','ext');
 return unless defined $ext;
 my $c=$ext->getChildrenByTagNameNS($ns, 'resData'); 
 $c = $c->shift;
 return unless defined $c;
 $c = $c->getChildrenByTagName('op:infData');
 $c = $c->shift;
 return unless defined $c;
 $c = $c->getChildrenByTagName('op:contact');
 $c = $c->shift;
 return unless defined $c;
 $c = $c->getChildrenByTagName('*');
 my $s = $c->size();
 for (my $i=1; $i <= $s; $i++) {
	my $node = $c->shift;
   $h->{$node->localName()} = $node->to_literal;
}
 
 if (scalar(keys %$h) > 0) {
	my $contact=$rinfo->{contact}->{$oname}->{self};
	$contact->vatno($h->{'vat'}) if defined $h->{'vat'};
	$contact->orgno($h->{'passportNumber'}) if defined $h->{'passportNumber'};
	$contact->orgno($h->{'socialSecurityNumber'}) if defined $h->{'socialSecurityNumber'};
	$contact->orgno($h->{'companyRegistrationNumber'}) if defined $h->{'companyRegistrationNumber'};
	$contact->custom_fields($h);
 }
}


############ Transform commands

sub add_extensions
{
 my ($epp,$contact,$op)=@_;
 my $mes=$epp->message();

 my $custom_fields=$contact->custom_fields();

 return unless (defined($custom_fields) and ref($custom_fields) eq 'HASH');
 my $eid=build_command_extension($mes,$epp);
 my @e;
 
 foreach my $key (keys %$custom_fields) {
	push @e,['op:'.$key,$custom_fields->{$key}];
 }
 
 my @f;
 my $str = 'op:contact';
 if($op eq 'update') {
	my @g;
	push @g,['op:chg', @e];
	push @f,[$str, @g];
 }
 else {
	push @f,[$str, @e];
 } 

 $mes->command_extension($eid,['op:'.$op,@f]);
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
