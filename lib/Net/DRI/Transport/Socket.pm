## Domain Registry Interface, TCP/SSL Socket Transport
##
## Copyright (c) 2005-2011 Patrick Mevzek <netdri@dotandco.com>. All rights reserved.
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

package Net::DRI::Transport::Socket;

use base qw(Net::DRI::Transport);

use strict;
use warnings;

use Time::HiRes ();
use IO::Socket::INET;
## At least this version is needed, to have getline()
use IO::Socket::SSL 0.90;

use Net::DRI::Exception;
use Net::DRI::Util;
use Net::DRI::Data::Raw;

=pod

=head1 NAME

Net::DRI::Transport::Socket - TCP/TLS Socket connection for Net::DRI

=head1 DESCRIPTION

This module implements a socket (tcp or tls) for establishing connections in Net::DRI

=head1 METHODS

At creation (see Net::DRI C<new_profile>) you pass a reference to an hash, with the following available keys:

=head2 socktype

ssl, tcp or udp

=head2 ssl_key_file ssl_cert_file ssl_ca_file ssl_ca_path ssl_cipher_list ssl_version ssl_passwd_cb

if C<socktype> is 'ssl', all key materials, see IO::Socket::SSL documentation for corresponding options

=head2 ssl_verify

see IO::Socket::SSL documentation about verify_mode (by default 0x00 here)

=head2 ssl_verify_callback

see IO::Socket::SSL documentation about verify_callback, it gets here as first parameter the transport object
then all parameter given by IO::Socket::SSL; it is explicitly verified that the subroutine returns a true value,
and if not the connection is aborted.

=head2 remote_host remote_port

hostname (or IP address) & port number of endpoint

=head2 client_login client_password

protocol login & password

=head2 client_newpassword

(optional) new password if you want to change password on login for registries handling that at connection

=head2 protocol_connection

Net::DRI class handling protocol connection details. (Ex: C<Net::DRI::Protocol::RRP::Connection> or C<Net::DRI::Protocol::EPP::Connection>)

=head2 protocol_data

(optional) opaque data given to protocol_connection class.
For EPP, a key login_service_filter may exist, whose value is a code ref. It will be given an array of services, and should give back a
similar array; it can be used to filter out some services from those given by the registry.

=head2 close_after

number of protocol commands to send to server (we will automatically close and re-open connection if needed)

=head2 local_host

(optional) the local address (hostname or IP) you want to use to connect

=head1 SUPPORT

For now, support questions should be sent to:

E<lt>netdri@dotandco.comE<gt>

Please also see the SUPPORT file in the distribution.

=head1 SEE ALSO

http://www.dotandco.com/services/software/Net-DRI/

=head1 AUTHOR

Patrick Mevzek, E<lt>netdri@dotandco.comE<gt>

=head1 COPYRIGHT

Copyright (c) 2005-2011 Patrick Mevzek <netdri@dotandco.com>.
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
 my ($class,$ctx,$rp)=@_;
 my %opts=%$rp;
 my $po=$ctx->{protocol};

 my %t=(message_factory => $po->factories()->{message});
 Net::DRI::Exception::usererr_insufficient_parameters('protocol_connection') unless (exists($opts{protocol_connection}) && $opts{protocol_connection});
 $t{pc}=$opts{protocol_connection};
 $t{pc}->require or Net::DRI::Exception::err_failed_load_module('transport/socket',$t{pc},$@);
 if ($t{pc}->can('transport_default'))
 {
  %opts=($t{pc}->transport_default('socket_inet'),%opts);
 }

 my $self=$class->SUPER::new($ctx,\%opts); ## We are now officially a Net::DRI::Transport instance
 $self->has_state(exists $opts{has_state}? $opts{has_state} : 1);
 $self->is_sync(1);
 $self->name('socket_inet');
 $self->version('0.5');
 ##delete($ctx->{protocol}); ## TODO : double check it is ok
 delete($ctx->{registry});
 delete($ctx->{profile});

 Net::DRI::Exception::usererr_insufficient_parameters('socktype must be defined') unless (exists($opts{socktype}));
 Net::DRI::Exception::usererr_invalid_parameters('socktype must be ssl, tcp or udp') unless ($opts{socktype}=~m/^(ssl|tcp|udp)$/);
 $t{socktype}=$opts{socktype};
 $t{client_login}=$opts{client_login};
 $t{client_password}=$opts{client_password};
 $t{client_newpassword}=$opts{client_newpassword} if (exists($opts{client_newpassword}) && $opts{client_newpassword});

 $t{protocol_data}=$opts{protocol_data} if (exists($opts{protocol_data}) && $opts{protocol_data});
 my @need=qw/read_data write_message/;
 Net::DRI::Exception::usererr_invalid_parameters('protocol_connection class ('.$t{pc}.') must have: '.join(' ',@need)) if (grep { ! $t{pc}->can($_) } @need);

 if (exists($opts{find_remote_server}) && defined($opts{find_remote_server}) && $t{pc}->can('find_remote_server'))
 {
  ($opts{remote_host},$opts{remote_port})=$t{pc}->find_remote_server($self,$opts{find_remote_server});
  $self->log_output('notice','transport',$ctx,{phase=>'opening',message=>'Found the following remote_host:remote_port = '.$opts{remote_host}.':'.$opts{remote_port}});
 }
 foreach my $p ('remote_host','remote_port','protocol_version')
 {
  Net::DRI::Exception::usererr_insufficient_parameters($p.' must be defined') unless (exists($opts{$p}) && $opts{$p});
  $t{$p}=$opts{$p};
 }

 Net::DRI::Exception::usererr_invalid_parameters('close_after must be an integer') if ($opts{close_after} && !Net::DRI::Util::isint($opts{close_after}));
 $t{close_after}=$opts{close_after} || 0;

 if ($t{socktype} eq 'ssl')
 {
  $IO::Socket::SSL::DEBUG=$opts{ssl_debug} if exists($opts{ssl_debug});

  my %s=(SSL_use_cert => 0);
  $s{SSL_verify_mode}=(exists($opts{ssl_verify}))? $opts{ssl_verify} : 0x00; ## by default, no authentication whatsoever
  $s{SSL_verify_callback}=sub { my $r=$opts{ssl_verify_callback}->($self,@_); Net::DRI::Exception->die(1,'transport/socket',6,'SSL certificate user verification failed, aborting connection') unless $r; 1; } if (exists $opts{ssl_verify_callback} && defined $opts{ssl_verify_callback});
  foreach my $s (qw/key_file cert_file ca_file ca_path version passwd_cb/)
  {
   next unless exists($opts{'ssl_'.$s});
   $s{'SSL_'.$s}=$opts{'ssl_'.$s};
   Net::DRI::Exception::usererr_invalid_parameters('File "'.$opts{'ssl_'.$s}.'" does not exist or is unreadable by current UID') if ($s=~m/_file$/ && ! -r $opts{'ssl_'.$s});
   Net::DRI::Exception::usererr_invalid_parameters('Directory "'.$opts{'ssl_'.$s}.'" does not exist')                            if ($s=~m/_path$/ && ! -d $opts{'ssl_'.$s});
  }
  $s{SSL_use_cert}=1 if exists $s{SSL_cert_file};
  $s{SSL_cipher_list}=exists $opts{ssl_cipher_list} ? $opts{ssl_cipher_list} : 'SSLv3:TLSv1:!aNULL:!eNULL';

  $t{ssl_context}=\%s;
 }

 $t{local_host}=$opts{local_host} if (exists($opts{local_host}) && $opts{local_host});
 $t{remote_uri}=sprintf('%s://%s:%d',$t{socktype},$t{remote_host},$t{remote_port}); ## handy shortcust only used for error messages
 $self->{transport}=\%t;
 bless($self,$class); ## rebless in my class

 my $rc;
 if ($self->defer()) ## we will open, but later
 {
  $self->current_state(0);
 } else ## we will open NOW
 {
  $rc=$self->open_connection($ctx);
  $self->current_state(1);
 }

 return ($self,$rc);
}

sub sock { my ($self,$v)=@_; $self->transport_data()->{sock}=$v if defined($v); return $self->transport_data()->{sock}; }

## TODO (for IRIS DCHK1 + NAPTR/SRV)
## Wrap in an eval to handle timeout (see if outer eval already for that ?)
## Handle remote_host/port being ref array of ordered strings to try (in which case defer should be 0 probably as the list of things to try have been determined now, not later)
## Or specify a callback to call when doing socket open to find the correct host+ports to use at that time
sub open_socket
{
 my ($self,$ctx)=@_;
 my $t=$self->transport_data();
 my $type=$t->{socktype};
 my $sock;

 my %n=( PeerAddr   => $t->{remote_host},
         PeerPort   => $t->{remote_port},
         Proto      => $t->{socktype} eq 'udp'? 'udp' : 'tcp',
         Blocking   => 1,
	 MultiHomed => 1,
       );
 $n{LocalAddr}=$t->{local_host} if exists($t->{local_host});

 if ($type eq 'ssl')
 {
  $sock=IO::Socket::SSL->new(%{$t->{ssl_context}},
                             %n,
                            );
 } elsif ($type eq 'tcp' || $type eq 'udp')
 {
  $sock=IO::Socket::INET->new(%n);
 }

 Net::DRI::Exception->die(1,'transport/socket',6,'Unable to setup the socket for '.$t->{remote_uri}.' with error: "'.$!.($type eq 'ssl'? '" and SSL error: "'.IO::Socket::SSL::errstr().'"' : '"')) unless defined $sock;
 $sock->autoflush(1);
 $self->sock($sock);
 $self->log_output('notice','transport',$ctx,{phase=>'opening',message=>'Successfully opened socket to '.$t->{remote_uri}});
 return;
}

sub send_login
{
 my ($self,$ctx)=@_;
 my $t=$self->transport_data();
 my $sock=$self->sock();
 my $pc=$t->{pc};
 my $dr;
 my $cltrid=$self->generate_trid($self->{logging_ctx}->{registry});
 my @rs;

 ## Get server greeting, if needed
 if ($ctx->{protocol}->has_action('session','connect'))
 {
  my $t1=Time::HiRes::time();
  $dr=$pc->read_data($self,$sock);
  my $t2=Time::HiRes::time();
  $self->log_output('notice','transport',$ctx,{trid=>$cltrid,phase=>'opening',direction=>'in',message=>$dr});
  push @rs,$self->protocol_parse($ctx->{protocol},'session','connect',$dr,$cltrid,$t2-$t1);
  return Net::DRI::Util::link_rs(@rs) unless $rs[-1]->is_success();
 }

 return unless $ctx->{protocol}->has_action('session','login');

 foreach my $p (qw/client_login client_password/)
 {
  Net::DRI::Exception::usererr_insufficient_parameters($p.' must be defined') unless (exists($t->{$p}) && $t->{$p});
 }

 $cltrid=$self->generate_trid($self->{logging_ctx}->{registry});

 my $login=$ctx->{protocol}->action('session','login',$cltrid,$t->{client_login},$t->{client_password},{ client_newpassword => $t->{client_newpassword}, %{$t->{protocol_data} || {}}}); ## TODO: fix last hash ref
 $self->log_output('notice','transport',$ctx,{otype=>'session',oaction=>'login',trid=>$cltrid,phase=>'opening',direction=>'out',message=>$login});
 my $t1=Time::HiRes::time();
 Net::DRI::Exception->die(0,'transport/socket',4,'Unable to send login message to '.$t->{remote_uri}) unless ($sock->print($pc->write_message($self,$login)));

 ## Verify login successful
 $dr=$pc->read_data($self,$sock);
 my $t2=Time::HiRes::time();
 $self->log_output('notice','transport',$ctx,{otype=>'session',oaction=>'login',trid=>$cltrid,phase=>'opening',direction=>'in',message=>$dr});
 push @rs,$self->protocol_parse($ctx->{protocol},'session','login',$dr,$cltrid,$t2-$t1,$login);

 return Net::DRI::Util::link_rs(@rs);
}

sub send_logout
{
 my ($self,$ctx)=@_;
 my $t=$self->transport_data();
 my $sock=$self->sock();
 my $pc=$t->{pc};

 return unless $ctx->{protocol}->has_action('session','logout');

 my $cltrid=$self->generate_trid($self->{logging_ctx}->{registry});

 my $logout=$ctx->{protocol}->action('session','logout',$cltrid);
 $self->log_output('notice','transport',$ctx,{otype=>'session',oaction=>'logout',trid=>$cltrid,phase=>'closing',direction=>'out',message=>$logout});
 my $t1=Time::HiRes::time();
 Net::DRI::Exception->die(0,'transport/socket',4,'Unable to send logout message to '.$t->{remote_uri}) unless ($sock->print($pc->write_message($self,$logout)));
 my $dr=$pc->read_data($self,$sock); ## We expect this to throw an exception, since the server will probably cut the connection
 my $t2=Time::HiRes::time();
 $self->log_output('notice','transport',$ctx,{otype=>'session',oaction=>'logout',trid=>$cltrid,phase=>'closing',direction=>'in',message=>$dr});
 my $rc1=$self->protocol_parse($ctx->{protocol},'session','logout',$dr,$cltrid,$t2-$t1,$logout);
 die $rc1 unless $rc1->is_success();
 return $rc1;
}

sub open_connection
{
 my ($self,$ctx)=@_;
 $self->open_socket($ctx);
 my $rc=$self->send_login($ctx);
 $self->current_state(1);
 $self->time_open(time());
 $self->time_used(time());
 $self->transport_data()->{exchanges_done}=0;
 return $rc;
}

## TODO : convert to new framework, remove keepalive & parse_keepalive methods in Connection classes
sub ping
{
 my ($self,$autorecon)=@_;
 $autorecon=0 unless defined $autorecon;
 my $t=$self->transport_data();
 my $sock=$self->sock();
 my $pc=$t->{pc};
 Net::DRI::Exception::method_not_implemented('keepalive',$pc) unless $pc->can('keepalive');
 Net::DRI::Exception::method_not_implemented('parse_keepalive',$pc) unless $pc->can('parse_keepalive');

 my $cltrid=$self->generate_trid($self->{logging_ctx}->{registry});
 my $ok=eval
 {
  local $SIG{ALRM}=sub { die 'timeout' };
  alarm(10);
  my $noop=$pc->keepalive($t->{message_factory},$cltrid);
  $self->log_output('notice','transport',{otype=>'session',oaction=>'keepalive'},{trid=>$cltrid,phase=>'keepalive',direction=>'out',message=>$noop});
  Net::DRI::Exception->die(0,'transport/socket',4,'Unable to send ping message to '.$t->{remote_uri}) unless ($sock->print($pc->write_message($self,$noop)));
  $self->time_used(time());
  $t->{exchanges_done}++;
  my $dr=$pc->read_data($self,$sock);
  $self->log_output('notice','transport',{otype=>'session',oaction=>'keepalive'},{trid=>$cltrid,phase=>'keepalive',direction=>'in',message=>$dr});
  my $rc=$pc->parse_keepalive($dr);
  die($rc) unless $rc->is_success();
  1;
 };
 alarm(0);

 if (! $ok)
 {
  $self->current_state(0);
  $self->open_connection({}) if $autorecon; ## TODO
 } else
 {
  $self->current_state(1);
 }
 return $self->current_state();
}

sub close_socket
{
 my ($self)=@_;
 my $t=$self->transport_data();
 $self->sock()->close();
 $self->log_output('notice','transport',{},{phase=>'closing',message=>'Successfully closed socket for '.$t->{remote_uri}});
 $self->sock(undef);
}

sub close_connection
{
 my ($self,$ctx)=@_;
 $self->send_logout($ctx);
 $self->close_socket();
 $self->current_state(0);
}

sub end
{
 my ($self,$ctx)=@_;
 if ($self->current_state())
 {
  eval
  {
   local $SIG{ALRM}=sub { die 'timeout' };
   alarm(10);
   $self->close_connection($ctx);
  };
  alarm(0); ## since close_connection may die, this must be outside of eval to be executed in all cases
 }
}

####################################################################################################

sub send
{
 my ($self,$ctx,$tosend,$count)=@_;
 ## We do a very crude error handling : if first send fails, we reset connection.
 ## Thus if you put retry=>2 when creating this object, the connection will be re-established and the message resent
 $self->SUPER::send($ctx,$tosend,\&_print,sub { shift->current_state(0) },$count);
}

sub _print ## here we are sure open_connection() was called before
{
 my ($self,$count,$tosend,$ctx)=@_;
 my $pc=$self->transport_data('pc');
 my $sock=$self->sock();
 my $m=($self->transport_data('socktype') eq 'udp')? 'send' : 'print';
 Net::DRI::Exception->die(0,'transport/socket',4,'Unable to send message to '.$self->transport_data('remote_uri').' because of error: '.$!) unless ($sock->$m($pc->write_message($self,$tosend)));
 return 1; ## very important
}

sub receive
{
 my ($self,$ctx,$count)=@_;
 return $self->SUPER::receive($ctx,\&_get,undef,$count);
}

sub _get
{
 my ($self,$count,$ctx)=@_;
 my $t=$self->transport_data();
 my $sock=$self->sock();
 my $pc=$t->{pc};

 ## Answer
 my $dr=$pc->read_data($self,$sock);
 $t->{exchanges_done}++;
 if ($t->{exchanges_done}==$t->{close_after} && $self->has_state() && $self->current_state())
 {
  $self->log_output('notice','transport',$ctx,{phase=>'closing',message=>'Due to maximum number of exchanges reached, closing connection to '.$t->{remote_uri}});
  $self->close_connection($ctx);
 }
 return $dr;
}

sub try_again
{
 my ($self,$ctx,$po,$err,$count,$istimeout,$step,$rpause,$rtimeout)=@_;
 if ($step==0) ## sending not already done, hence error during send
 {
  $self->current_state(0);
  return 1;
 }

 ## We do a more agressive retry procedure in case of udp (that is IRIS basically)
 ## See RFC4993 section 4
 if ($step==1 && $istimeout==1 && $self->transport_data()->{socktype} eq 'udp')
 {
  $self->log_output('debug','transport',$ctx,{phase=>'active',message=>sprintf('In try_again, currently: pause=%f timeout=%f',$$rpause,$$rtimeout)});
  $$rtimeout=2*$$rtimeout;
  $$rpause+=rand(1+int($$rpause/2));
  $self->log_output('debug','transport',$ctx,{phase=>'active',message=>sprintf('In try_again, new values: pause=%f timeout=%f',$$rpause,$$rtimeout)});
  return 1; ## we will retry
 }

 return 0; ## we do not handle other cases, hence no retry and fatal error
}


####################################################################################################
1;
