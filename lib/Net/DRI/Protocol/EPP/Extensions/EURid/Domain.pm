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
 my $contadd=$todo->add('contacts');
 my $contdel=$todo->del('contacts');
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
 $mes->command_extension($eid, @n);
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

####################################################################################################
1;
