## Domain Registry Interface, EPP Session commands (RFC4930)
##
## Copyright (c) 2005-2007,2010-2011 Patrick Mevzek <netdri@dotandco.com>. All rights reserved.
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

package Net::DRI::Protocol::EPP::Core::Session;

use strict;
use warnings;

use Net::DRI::Exception;
use Net::DRI::Util;

=pod

=head1 NAME

Net::DRI::Protocol::EPP::Core::Session - EPP Session commands (RFC4930 obsoleting RFC3730) for Net::DRI

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

Copyright (c) 2005-2007,2010-2011 Patrick Mevzek <netdri@dotandco.com>.
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
	   'connect' => [ undef , \&parse_greeting ],
	   login     => [ \&login ],
	   logout    => [ \&logout ],
           noop      => [ \&hello, \&parse_greeting ], ## for keepalives
         );

 return { 'session' => \%tmp };
}

sub hello ## should trigger a greeting from server, allowed at any time
{
 my ($epp)=@_;
 my $mes=$epp->message();
 $mes->command(['hello']);
}

## Most of this was previously in EPP/Message
sub parse_greeting
{
 my ($po,$otype,$oaction,$oname,$rinfo)=@_;
 my $mes=$po->message();
 my $g=$mes->node_greeting();
 return unless $mes->is_success() && defined $g; ## make sure we are not called for all parsing operations (after poll), just after true greeting

 my %tmp;
 foreach my $el (Net::DRI::Util::xml_list_children($g))
 {
  my ($n,$c)=@$el;
  if ($n eq 'svID')
  {
   $tmp{id}=$c->textContent();
  } elsif ($n eq 'svDate')
  {
   $tmp{date}=$po->parse_iso8601($c->textContent());
  } elsif ($n eq 'svcMenu')
  {
   foreach my $sel (Net::DRI::Util::xml_list_children($c))
   {
    my ($nn,$cc)=@$sel;
    if ($nn=~m/^(version|lang)$/)
    {
     push @{$tmp{$1}},$cc->textContent();
    } elsif ($nn eq 'objURI')
    {
     push @{$tmp{objects}},$cc->textContent();
    } elsif ($nn eq 'svcExtension')
    {
     push @{$tmp{extensions_announced}},map { $_->textContent() } grep { $_->getName() eq 'extURI' } $cc->getChildNodes();
    }
   }
  } elsif ($n eq 'dcp') ## Does anyone really use this data ??
  {
   $tmp{dcp}=$c->cloneNode(1);
   my $s=substr(substr($c->toString(),5),0,-6); ## we remove <dcp> and </dcp>
   $s=~s/\s+//g;
   $tmp{dcp_string}=$s;
  }
 }

 ## By default, we will use all extensions announced by server;
 ## EPP extension modules are expected to tweak that depending on their own needs
 $tmp{extensions_announced}=[] unless exists $tmp{extensions_announced};
 $tmp{extensions_selected}=$tmp{extensions_announced};

 my %ctxlog=(action=>'greeting',direction=>'in',trid=>$mes->cltrid());
 $po->log_output('info','protocol',{%ctxlog,message=>'EPP extensions announced by server: '.join(' ',@{$tmp{extensions_announced}})});
 my %ext=map { $_ => 1 } (@{$tmp{extensions_announced}},@{$tmp{objects}});
 $ext{'urn:ietf:params:xml:ns:epp-1.0'}=1;
 my %ns=map { $_->[0] => 1 } values(%{$mes->ns()});
 foreach my $ns (keys %ext)
 {
  next if exists $ns{$ns};
  $po->log_output('warning','protocol',{%ctxlog,message=>sprintf('EPP extension "%s" is announced by server but not locally enabled (extension module not loaded or lack of support?)',$ns)});
 }
 foreach my $ns (keys %ns)
 {
  next if exists $ext{$ns};
  $po->log_output('warning','protocol',{%ctxlog,message=>sprintf('EPP extension "%s" is locally enabled but not announced by server (registry policy change?)',$ns)});
 }

 $po->default_parameters()->{server}=\%tmp;
 $rinfo->{session}->{server}=\%tmp;
}

sub logout
{
 my ($epp)=@_;
 my $mes=$epp->message();
 $mes->command(['logout']);
}

sub login
{
 my ($po,$login,$password,$rdata)=@_;
 Net::DRI::Exception::usererr_insufficient_parameters('login')    unless defined $login && length $login;
 Net::DRI::Exception::usererr_insufficient_parameters('password') unless defined $password && length $password;
 Net::DRI::Exception::usererr_invalid_parameters('login')         unless Net::DRI::Util::xml_is_token($login,3,16);
 Net::DRI::Exception::usererr_invalid_parameters('password')      unless Net::DRI::Util::xml_is_token($password,6,16);

 my $mes=$po->message();
 $mes->command(['login']);
 my @d;
 push @d,['clID',$login];
 push @d,['pw',$password];

 if (Net::DRI::Util::has_key($rdata,'client_newpassword'))
 {
  Net::DRI::Exception::usererr_invalid_parameters('client_newpassword') unless Net::DRI::Util::xml_is_token($rdata->{client_newpassword},6,16);
  push @d,['newPW',$rdata->{client_newpassword}];
 }

 my (@o,$tmp);
 my $sdata=$po->default_parameters()->{server};

 $tmp=Net::DRI::Util::has_key($rdata,'version') ? $rdata->{version} : $sdata->{version};
 Net::DRI::Exception::usererr_insufficient_parameters('version') unless defined $tmp;
 $tmp=$tmp->[0] if ref $tmp eq 'ARRAY';
 Net::DRI::Exception::usererr_invalid_parameters('version') unless ($tmp=~m/^[1-9]+\.[0-9]+$/);
 push @o,['version',$tmp];

 $tmp=Net::DRI::Util::has_key($rdata,'lang') ? $rdata->{lang} : $sdata->{lang};
 Net::DRI::Exception::usererr_insufficient_parameters('lang') unless defined $tmp;
 $tmp=$tmp->[0] if ref $tmp eq 'ARRAY';
 Net::DRI::Exception::usererr_invalid_parameters('lang') unless Net::DRI::Util::xml_is_language($tmp);
 push @o,['lang',$tmp];

 push @d,['options',@o];

 my @s;
 push @s,map { ['objURI',$_] } @{$sdata->{objects}}; ## this part is not optional
 $tmp=Net::DRI::Util::has_key($rdata,'extensions') ? $rdata->{extensions} : $sdata->{extensions_selected};

 if (defined $tmp)
 {
  Net::DRI::Exception::usererr_invalid_parameters('extensions') unless ref $tmp eq 'ARRAY';
  push @s,['svcExtension',map {['extURI',$_]} @$tmp] if @$tmp; ## this is optional
 }
 $po->log_output('info','protocol',{action=>'login',direction=>'out',trid=>$mes->cltrid(),message=>'EPP extensions selected during login: '.join(' ',defined $tmp ? @$tmp : ())});

## TODO: we had this before in EPP/Connection :
#  push @s,['svcExtension',map {['extURI',$_]} @{$rg->{svcext}}] if (exists($rg->{svcext}) && defined($rg->{svcext}) && (ref($rg->{svcext}) eq 'ARRAY'));
#  @s=$pdata->{login_service_filter}->(@s) if (defined($pdata) && ref($pdata) eq 'HASH' && exists($pdata->{login_service_filter}) && ref($pdata->{login_service_filter}) eq 'CODE');

 push @d,['svcs',@s];

 $mes->command_body(\@d);
}

####################################################################################################
1;
