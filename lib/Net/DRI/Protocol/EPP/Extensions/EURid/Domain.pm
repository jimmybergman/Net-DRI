## Domain Registry Interface, EURid Domain EPP extension commands
## (based on EURid registration_guidelines_v1_0E-epp.pdf)
##
## Copyright (c) 2005-2010 Patrick Mevzek <netdri@dotandco.com>. All rights reserved.
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

package Net::DRI::Protocol::EPP::Extensions::EURid::Domain;

use strict;
use warnings;

use Net::DRI::Util;
use Net::DRI::Exception;
use Net::DRI::Protocol::EPP::Util;

our $VERSION=do { my @r=(q$Revision: 1.15 $=~/\d+/g); sprintf("%d".".%02d" x $#r, @r); };

=pod

=head1 NAME

Net::DRI::Protocol::EPP::Extensions::EURid::Domain - EURid EPP Domain extension commands for Net::DRI

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

Copyright (c) 2005-2010 Patrick Mevzek <netdri@dotandco.com>.
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
          create            => [ \&create, undef ],
          update            => [ \&update, undef ],
          transfer_request  => [ \&transfer_request, undef ],
	  info              => [ \&info, \&info_parse ],
         );

 return { 'domain' => \%tmp };
}

####################################################################################################

sub build_command_extension
{
 my ($mes,$epp,$tag)=@_;
 return $mes->command_extension_register($tag,sprintf('xmlns:domain-ext="%s" xsi:schemaLocation="%s %s"',$mes->nsattrs('domain-ext')));
}

sub create
{
 my ($epp,$domain,$rd)=@_;
 my $mes=$epp->message();

 my $cs=$rd->{contact};

 return unless Net::DRI::Util::has_key($rd,'nsgroup') || $cs->has_type('onsite');

 my @n=add_nsgroup($rd->{nsgroup});

 push @n,add_contact('onsite',$cs,9) if $cs->has_type('onsite');

 my $eid=build_command_extension($mes,$epp,'domain-ext:create');
 $mes->command_extension($eid,[@n]);
}

sub update
{
 my ($epp,$domain,$todo)=@_;
 my $mes=$epp->message();

 my $nsgadd=$todo->add('nsgroup');
 my $nsgdel=$todo->del('nsgroup');
 my $contadd=$todo->add('contact');
 my $contdel=$todo->del('contact');
 return unless ($nsgadd || $nsgdel || $contadd || $contdel);

 my @n;
 if ($nsgadd || ($contadd && $contadd->has_type('onsite'))) {
  my @add;
  push @add, add_nsgroup($nsgadd) if $nsgadd;
  push @add, add_contact('onsite',$contadd,9) if $contadd && $contadd->has_type('onsite');
  push @n,['domain-ext:add', @add];
 }
 if ($nsgdel || ($contdel  && $contdel->has_type('onsite'))) {
  my @del;
  push @del, add_nsgroup($nsgdel) if $nsgdel;
  push @del, add_contact('onsite',$contdel,9) if $contdel && $contdel->has_type('onsite');
  push @n,['domain-ext:rem', @del];
 }

 my $eid=build_command_extension($mes,$epp,'domain-ext:update');
 $mes->command_extension($eid, \@n);
}

sub transfer_request
{
 my ($epp,$domain,$rd)=@_;
 my $mes=$epp->message();

 my $cs=$rd->{contact};
 my $creg=$cs->get('registrant');
 my @n;
 push @n, ['domain-ext:registrant', $creg->srid] if defined($creg) && ref($creg);
 push @n,add_contact('tech',$cs,9) if $cs->has_type('tech');
 push @n,add_contact('billing',$cs,9) if $cs->has_type('billing');
 push @n,add_contact('onsite',$cs,9) if $cs->has_type('onsite');

 if (Net::DRI::Util::has_ns($rd))
 {
  my $n=Net::DRI::Protocol::EPP::Util::build_ns($epp,$rd->{ns},$domain,'domain-ext');
  my @ns=$mes->nsattrs('domain');
  push @$n,{'xmlns:domain'=>shift(@ns),'xsi:schemaLocation'=>sprintf('%s %s',@ns)};
  push @n,$n;
 }

 my $eid=build_command_extension($mes,$epp,'domain-ext:transfer');
 $mes->command_extension($eid,['domain-ext:request',@n]);
}

sub add_nsgroup
{
 my ($nsg)=@_;
 return unless (defined($nsg) && $nsg);
 my @a=grep { defined($_) && $_ && !ref($_) && Net::DRI::Util::xml_is_normalizedstring($_,1,100) } map { Net::DRI::Util::isa_nsgroup($_)? $_->name() : $_ } (ref($nsg) eq 'ARRAY')? @$nsg : ($nsg);
 return map { ['domain-ext:nsgroup',$_] } grep {defined} @a[0..8];
}

sub add_contact
{
 my ($type,$cs,$max)=@_;
 $max--;
 my @r=grep { Net::DRI::Util::isa_contact($_,'Net::DRI::Data::Contact::EURid') } ($cs->get($type));
 return map { ['domain-ext:contact',{type => $type},$_->srid()] } grep {defined} @r[0..$max];
}

sub info
{
 my ($epp,$domain,$rd)=@_;
 my $mes=$epp->message();

 return unless Net::DRI::Util::has_key($rd,'authinfo_request') && $rd->{authinfo_request};

 my $eid=$mes->command_extension_register('authInfo','info');
 $mes->command_extension($eid,['authInfo:request']);
 return;
}

sub info_parse
{
 my ($po,$otype,$oaction,$oname,$rinfo)=@_;
 my $mes=$po->message();

 return unless $mes->is_success();

 my $infdata=$mes->get_extension('domain-ext','infData');
 return unless defined $infdata;

 my @nsg;
 my $status=$rinfo->{domain}->{$oname}->{status};
 my $contact=$rinfo->{domain}->{$oname}->{contact};
 foreach my $el (Net::DRI::Util::xml_list_children($infdata))
 {
  my ($name,$c)=@$el;
  if ($name=~m/^(onHold|quarantined)$/) ## onHold here has nothing to do with EPP client|serverHold, unfortunately
  {
   $status->add($name) if Net::DRI::Util::xml_parse_boolean($c->textContent()); ## TODO : correct status name?
  } elsif ($name=~m/^(availableDate|deletionDate)$/)
  {
   $rinfo->{domain}->{$oname}->{$name}=$po->parse_iso8601($c->textContent());
  } elsif ($name eq 'contact')
  {
   $contact->add($po->create_local_object('contact')->srid($c->textContent()),$c->getAttribute('type'));
  } elsif ($name eq 'nsgroup')
  {
   push @nsg,$po->create_local_object('hosts')->name($c->textContent());
  } elsif ($name eq 'keygroup')
  {
   $rinfo->{domain}->{$oname}->{keygroup}=$c->textContent();
  } elsif ($name eq 'pendingTransfer')
  {
   $status->add('pendingTransfer');
   my %p;
   my $cs=$po->create_local_object('contactset');
   foreach my $subel (Net::DRI::Util::xml_list_children($c))
   {
    my ($subname,$subc)=@$subel;
    if ($subname eq 'registrant')
    {
     $cs->set($po->create_local_object('contact')->srid($subc->textContent()),'registrant');
    } elsif ($subname eq 'contact')
    {
     $cs->add($po->create_local_object('contact')->srid($subc->textContent()),$subc->getAttribute('type'));
    } elsif ($subname eq 'initiationDate')
    {
     $p{initiationDate}=$po->parse_iso8601($subc->textContent());
    }
   }
   $p{contact}=$cs;
   $rinfo->{domain}->{$oname}->{pending_transaction}=\%p;
  }
 }
 $rinfo->{domain}->{$oname}->{nsgroup}=\@nsg if @nsg;
 return;
}

####################################################################################################
1;
