## Domain Registry Interface, OpenSRS XCP Domain commands
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

package Net::DRI::Protocol::OpenSRS::XCP::Domain;

use strict;
use warnings;

use Net::DRI::Exception;
use Net::DRI::Util;

our $VERSION=do { my @r=(q$Revision: 1.2 $=~/\d+/g); sprintf("%d".".%02d" x $#r, @r); };

=pod

=head1 NAME

Net::DRI::Protocol::OpenSRS::XCP::Domain - OpenSRS XCP Domain commands for Net::DRI

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
	  info  => [\&info,  \&info_parse ],
          check => [\&check, \&check_parse ],
          create => [ \&create, \&create_parse ], ## TODO : parsing of return messages
          delete => [ \&delete, \&delete_parse ],
	  renew => [ \&renew, \&renew_parse ],
          transfer_request => [ \&transfer_request, \&transfer_request_parse ],
          transfer_query => [ \&transfer_query, \&transfer_query_parse ],
          transfer_cancel => [ \&transfer_cancel, \&transfer_cancel_parse ],
          update => [ \&update ],
          send_authcode => [ \&send_authcode ],
          name_suggest => [ \&name_suggest, \&name_suggest_parse ],
         );

 return { 'domain' => \%tmp };
}

sub build_msg_cookie
{
 my ($msg,$action,$cookie,$regip)=@_;
 my %r=(action=>$action,object=>'domain',cookie=>$cookie);
 $r{registrant_ip}=$regip if defined($regip);
 $msg->command(\%r);
}

sub info
{
 my ($xcp,$domain,$rd)=@_;
 my $msg=$xcp->message();
 Net::DRI::Exception::usererr_insufficient_parameters('A cookie is needed for domain_info') unless Net::DRI::Util::has_key($rd,'cookie');
 build_msg_cookie($msg,'get',$rd->{cookie},$rd->{registrant_ip});
 $msg->command_attributes({type => 'all_info', domain => $domain});

}

sub info_parse
{
 my ($xcp,$otype,$oaction,$oname,$rinfo)=@_;
 my $mes=$xcp->message();
 return unless $mes->is_success();

 $rinfo->{domain}->{$oname}->{action}='info';
 $rinfo->{domain}->{$oname}->{exist}=1;
 my $ra=$mes->response_attributes(); ## Not parsed: dns_errors, descr

 my %d=(registry_createdate => 'crDate', registry_expiredate => 'exDate', registry_updatedate => 'upDate', registry_transferdate => 'trDate', expiredate => 'exDateLocal');
 while (my ($k,$v)=each(%d))
 {
  next unless exists($ra->{$k});
  $ra->{$k}=~s/\s+/T/; ## with a little effort we become ISO8601
  $rinfo->{domain}->{$oname}->{$v}=$xcp->parse_iso8601($ra->{$k});
 }

 my $ns=$ra->{nameserver_list};
 if (defined($ns) && ref($ns) && @$ns)
 {
  my $nso=$xcp->create_local_object('hosts');
  foreach my $h (@$ns)
  {
   $nso->add($h->{name},[$h->{ipaddress}]);
  }
  $rinfo->{domain}->{$oname}->{ns}=$nso;
 }

 foreach my $bool (qw/sponsoring_rsp auto_renew let_expire/)
 {
  next unless exists($ra->{$bool});
  $rinfo->{domain}->{$oname}->{$bool}=$ra->{$bool};
 }

 my $c=$ra->{contact_set};
 if (defined($c) && ref($c) && keys(%$c))
 {
  my $cs=$xcp->create_local_object('contactset');
  while (my ($type,$v)=each(%$c))
  {
   my $c=parse_contact($xcp,$v);
   $cs->add($c,$type eq 'owner'? 'registrant' : $type);
  }
  $rinfo->{domain}->{$oname}->{contact}=$cs;
 }

 ## No data about status ?
}

sub parse_contact
{
 my ($xcp,$rh)=@_;
 my $c=$xcp->create_local_object('contact');
 ## No ID given back ! Waouh that is great... not !
 $c->firstname($rh->{first_name});
 $c->name($rh->{last_name});
 $c->org($rh->{org_name}) if exists($rh->{org_name});
 $c->street([map { $rh->{'address'.$_} } grep {exists($rh->{'address'.$_}) && defined($rh->{'address'.$_}) } (1,2,3)]);
 $c->city($rh->{city}) if exists($rh->{city});
 $c->sp($rh->{state}) if exists($rh->{state});
 $c->pc($rh->{postal_code}) if exists($rh->{postal_code});
 $c->cc($rh->{country}) if exists($rh->{country});
 $c->voice($rh->{phone}) if exists($rh->{voice});
 $c->fax($rh->{fax}) if exists($rh->{fax});
 $c->email($rh->{email}) if exists($rh->{email});
 $c->url($rh->{url}) if exists($rh->{url});
 return $c;
}

sub check
{
 my ($xcp,$domain,$rd)=@_;
 my $msg=$xcp->message();
 my %r=(action=>'lookup',object=>'domain');
 $r{registrant_ip}=$rd->{registrant_ip} if exists $rd->{registrant_ip};
 $msg->command(\%r);
 $msg->command_attributes({domain => $domain});
}

sub check_parse
{
 my ($xcp,$otype,$oaction,$oname,$rinfo)=@_;
 my $mes=$xcp->message();
 return unless $mes->is_success();

 $rinfo->{domain}->{$oname}->{action}='check';
 my $ra=$mes->response_attributes();
 $rinfo->{domain}->{$oname}->{exist}=(exists $ra->{status} && defined($ra->{status}) && $ra->{status} eq 'available' && $mes->response_code()==210)? 0 : 1;
 $rinfo->{domain}->{$oname}->{exist_reason}=$mes->response_text();
}

sub create
{
 my ($xcp,$domain,$rd)=@_;

 sw_register($xcp, $domain, $rd, 'new'); # TBD: premium, sunrise, whois_privacy
}

sub create_parse
{
 my ($xcp,$otype,$oaction,$oname,$rinfo)=@_;
 my $mes=$xcp->message();
 return unless $mes->is_success();

 $rinfo->{domain}->{$oname}->{action}='create';
 my $ra=$mes->response_attributes();
 foreach (qw/admin_email cancelled_orders error id queue_request_id forced_pending whois_privacy/) {
  $rinfo->{domain}->{$oname}->{$_} = $ra->{$_} if exists $ra->{$_};
 }
}

sub sw_register
{
 my ($xcp,$domain,$rd,$reg_type)=@_;

 my $msg=$xcp->message();

 my %r=(action => 'sw_register', object => 'domain');
 $r{registrant_ip}=$rd->{registrant_ip} if exists $rd->{registrant_ip};

 $msg->command(\%r);

 Net::DRI::Exception::usererr_insufficient_parameters('Username+Password are required for sw_register') if grep { ! Net::DRI::Util::has_key($rd,$_) } qw/username password/;

 Net::DRI::Exception::usererr_insufficient_parameters('contacts are mandatory') unless Net::DRI::Util::has_contact($rd);
 my $cs=$rd->{contact};
 foreach my $t (qw/registrant admin billing/)
 {
  my @t=$cs->get($t);
  Net::DRI::Exception::usererr_invalid_parameters('one ' . $t . ' contact is mandatory') unless @t==1;
  my $co=$cs->get($t);
  Net::DRI::Exception::usererr_insufficient_parameters($t . 'contact is mandatory') unless Net::DRI::Util::isa_contact($co);
  $co->validate();
 }

 my %contact_set = ();
 my $attr = {reg_type => $reg_type, domain => $domain, contact_set => \%contact_set};
 $contact_set{owner} = add_owner_contact($msg,$cs);
 $contact_set{admin} = add_admin_contact($msg,$cs);
 $contact_set{billing} = add_billing_contact($msg,$cs);
 if ($cs->get('tech')) {
  $contact_set{tech} = add_tech_contact($msg,$cs); ## optional
  $attr->{custom_tech_contact} = 1;
 } else {
  $attr->{custom_tech_contact} = 0; # Use default tech contact
 }

 # These are all the OpenSRS names for optional parameters.  Might need to map generic names to OpenSRS namespace later.
 foreach (qw/auto_renew affiliate_id f_lock_domain f_parkp f_whois_privacy/) {
  $attr->{$_} = ($rd->{$_} ? 1 : 0 ) if Net::DRI::Util::has_key($rd, $_);
 }
 foreach (qw/affiliate_id reg_domain encoding_type tld_data/) {
  $attr->{$_} = ($rd->{$_}) if Net::DRI::Util::has_key($rd, $_);
 }

 if (Net::DRI::Util::has_key($rd, 'f_bypass_confirm') && Net::DRI::Util::has_auth($rd)) {
  $attr->{'f_bypass_confirm'} = 1;
  $attr->{'auth_info'} = $rd->{"auth"}->{"pw"};
 }

 # TBD: ccTLD-specific flags including domain encoding.
 # TBD: handle, link_domains, etc.

 if ($reg_type eq 'new') {
  Net::DRI::Exception::usererr_insufficient_parameters('duration is mandatory') unless Net::DRI::Util::has_duration($rd);
  $attr->{period} = $rd->{duration}->years();
 }

 $attr->{reg_username} = $rd->{username};
 $attr->{reg_password} = $rd->{password};

 $msg->command_attributes($attr);

 add_all_ns($domain,$msg,$rd->{ns});
}

sub update
{
 my ($xcp,$domain,$todo,$rd)=@_;

 my $msg=$xcp->message();
 my $attr = { domain => $domain };
 $msg->command_attributes($attr);

 Net::DRI::Exception::usererr_invalid_parameters($todo.' must be a non empty Net::DRI::Data::Changes object') unless Net::DRI::Util::isa_changes($todo);
 Net::DRI::Exception::usererr_insufficient_parameters('A cookie is needed for domain_info') unless Net::DRI::Util::has_key($rd,'cookie');

 my $nsset=$todo->set('ns');
 my $contactset=$todo->set('contact');

 my $statusadd = $todo->add('status');
 my $statusdel=$todo->del('status');
 
 my $lockstate = undef;
 $lockstate = 1 if Net::DRI::Util::isa_statuslist($statusadd) && !$statusadd->can_transfer();
 $lockstate = 0 if Net::DRI::Util::isa_statuslist($statusdel) && !$statusdel->can_transfer();
 
 my $whoisstate = undef;
 $whoisstate = 'enable' if Net::DRI::Util::isa_statuslist($statusadd) && !$statusadd->can_whois();
 $whoisstate = 'disable' if Net::DRI::Util::isa_statuslist($statusdel) && !$statusdel->can_whois();

 if (defined($nsset))
 {
  Net::DRI::Exception::usererr_invalid_parameters('ns changes for set must be a Net::DRI::Data::Hosts object') unless Net::DRI::Util::isa_hosts($nsset);
  Net::DRI::Exception::usererr_invalid_parameters('change of nameservers, contacts, lock state and whois protection is supported, but not in the same operation') if defined($contactset) || defined($lockstate) || defined($whoisstate);
  Net::DRI::Exception::usererr_insufficient_parameters('at least 2 nameservers are mandatory') unless ($nsset->count()>=2);

  build_msg_cookie($msg,'advanced_update_nameservers',$rd->{cookie},$rd->{registrant_ip});
  $attr->{op_type} = "assign";

  my $nslist = [];
  for (my $i = 1; $i <= $nsset->count(); $i++) { # Net:DRI name server list starts at 1.
   push @$nslist, scalar($nsset->get_details($i));
  }
  $attr->{assign_ns} = $nslist;
 }
 elsif (defined($contactset))
 {
  build_msg_cookie($msg,'update_contacts',$rd->{cookie},$rd->{registrant_ip});

  Net::DRI::Exception::usererr_invalid_parameters('contact changes for set must be a Net::DRI::Data::ContactSet') unless Net::DRI::Util::isa_contactset($contactset);
  Net::DRI::Exception::usererr_invalid_parameters('change of nameservers, contacts, lock state and whois protection is supported, but not in the same operation') if defined($lockstate) || defined($whoisstate);

  my %contact_set = ();
  my $types = [];
  CONTACT_TYPE: foreach my $t (qw/registrant admin billing tech/)
  {
   my @t=$contactset->get($t);
   next CONTACT_TYPE unless @t==1;
   my $co=$contactset->get($t);
   next CONTACT_TYPE unless Net::DRI::Util::isa_contact($co);
   $co->validate();
   my $registry_type = $t eq "registrant" ? "owner" : $t;
   $contact_set{$registry_type} = add_contact_info($msg,$co);
   push @$types, $registry_type;
  }
  $attr->{contact_set} = \%contact_set;
  $attr->{types} = $types;
 }
 elsif (defined($lockstate))
 {
  build_msg_cookie($msg,'modify',$rd->{cookie},$rd->{registrant_ip});
  
  Net::DRI::Exception::usererr_invalid_parameters('change of nameservers, contacts, lock state and whois protection is supported, but not in the same operation') if defined($whoisstate);

  $attr->{affect_domains} = 0;
  $attr->{data} = "status";
  $attr->{lock_state} = $lockstate;
 }
 elsif (defined($whoisstate))
 {
  build_msg_cookie($msg,'modify',$rd->{cookie},$rd->{registrant_ip});

  $attr->{affect_domains} = 0;
  $attr->{data} = "whois_privacy_state";
  $attr->{state} = $whoisstate;
 } else {
  Net::DRI::Exception::usererr_invalid_parameters('only change of nameservers, contacts, lock state and whois protection is supported');
 }
}

sub add_contact_info
{
 my ($msg,$co)=@_;
 my %contact = ();

 $contact{first_name} = $co->firstname();
 $contact{last_name} = $co->name();

 $contact{org_name} = $co->org() if $co->org();

 my $s=$co->street();
 Net::DRI::Exception::usererr_insufficient_parameters('1 line of address at least needed') unless ($s && (ref($s) eq 'ARRAY') && @$s && $s->[0]);

 $contact{address1} = $s->[0];
 $contact{address2} = $s->[1] if $s->[1];
 $contact{address3} = $s->[2] if $s->[2];
 Net::DRI::Exception::usererr_insufficient_parameters('city, sp, pc & cc mandatory') unless ($co->city() && $co->sp() && $co->pc() && $co->cc());
 $contact{city} = $co->city();
 $contact{state} = $co->sp();
 $contact{postal_code} = $co->pc();
 $contact{country} = uc($co->cc());
 Net::DRI::Exception::usererr_insufficient_parameters('voice & email mandatory') unless ($co->voice() && $co->email());
 $contact{phone} = $co->voice();
 $contact{fax} = $co->fax() if $co->fax();
 $contact{email} = $co->email();
 $contact{url} = $co->url() if $co->url();
 return \%contact;
}

sub add_owner_contact
{
 my ($msg,$cs)=@_;
 my $co=$cs->get('registrant');
 return add_contact_info($msg,$co) if Net::DRI::Util::isa_contact($co);
}

sub add_admin_contact
{
 my ($msg,$cs)=@_;
 my $co=$cs->get('admin');
 return add_contact_info($msg,$co) if Net::DRI::Util::isa_contact($co);
}

sub add_billing_contact
{
 my ($msg,$cs)=@_;
 my $co=$cs->get('billing');
 return add_contact_info($msg,$co) if Net::DRI::Util::isa_contact($co);
}

sub add_tech_contact
{
 my ($msg,$cs)=@_;
 my $co=$cs->get('tech');
 return add_contact_info($msg,$co) if Net::DRI::Util::isa_contact($co);
}

sub add_all_ns
{
 my ($domain,$msg,$ns)=@_;
 my @nslist = ();

 my $attr = $msg->command_attributes();
 $attr->{custom_nameservers} = 0;

 if (defined($ns)) {
  Net::DRI::Exception::usererr_insufficient_parameters('at least 2 nameservers are mandatory') unless (Net::DRI::Util::isa_hosts($ns) && $ns->count()>=2); # Name servers are optional; if present must be >=2

  for (my $i = 1; $i <= $ns->count(); $i++) { # Net:DRI name server list starts at 1.
   my $name = $ns->get_details($i); # get_details in scalar returns name
   push @nslist, { sortorder => $i, name => $name };
  }
  $attr->{custom_nameservers} = 1;
  $attr->{nameserver_list} =  \@nslist;
 }
 $msg->command_attributes($attr);
}

sub delete
{
 my ($xcp,$domain,$rd)=@_;
 my $msg=$xcp->message();

 Net::DRI::Exception::usererr_insufficient_parameters('Reseller ID is mandatory') unless (Net::DRI::Util::has_key($rd, 'reseller_id'));

 my %r=(action => 'revoke', object => 'domain');
 $r{registrant_ip}=$rd->{registrant_ip} if exists $rd->{registrant_ip};

 $msg->command(\%r);
 my $attr = {domain => $domain, reseller => $rd->{reseller_id}};
 $attr->{notes} = $rd->{notes} if Net::DRI::Util::has_key($rd, 'notes');
 $msg->command_attributes({domain => $domain, reseller => $rd->{reseller_id}});
}

sub delete_parse
{
 my ($xcp,$otype,$oaction,$oname,$rinfo)=@_;
 my $mes=$xcp->message();
 return unless $mes->is_success();

 $rinfo->{domain}->{$oname}->{action}='delete';
 my $ra=$mes->response_attributes();
 foreach (qw/charge price/) {
  $rinfo->{domain}->{$oname}->{$_} = $ra->{$_} if exists $ra->{$_};
 }
}

sub renew
{
 my ($xcp,$domain,$rd)=@_;
 my $msg=$xcp->message();

 my %r=(action => 'renew', object => 'domain');
 $r{registrant_ip}=$rd->{registrant_ip} if exists $rd->{registrant_ip};

 Net::DRI::Exception::usererr_insufficient_parameters('auto_renew setting is mandatory') unless (Net::DRI::Util::has_key($rd, 'auto_renew'));

 Net::DRI::Exception::usererr_insufficient_parameters('duration is mandatory') unless Net::DRI::Util::has_duration($rd);
 Net::DRI::Exception::usererr_insufficient_parameters('current expiration is mandatory') unless (Net::DRI::Util::has_key($rd, 'current_expiration') && Net::DRI::Util::check_isa($rd->{current_expiration}, 'DateTime')); # Can get this from set_cookie response.

 my $attr = {domain => $domain, period => $rd->{duration}->years(), currentexpirationyear => $rd->{current_expiration}->year()};

 # These are all the OpenSRS names for optional parameters.  Might need to map generic names to OpenSRS namespace later.
 foreach (qw/auto_renew f_parkp/) {
  $attr->{$_} = ($rd->{$_} ? 1 : 0 ) if Net::DRI::Util::has_key($rd, $_);
 }
 foreach (qw/affiliate_id notes/) {
  $attr->{$_} = ($rd->{$_}) if Net::DRI::Util::has_key($rd, $_);
 }

 # TBD: handle, etc.

 $msg->command(\%r);
 $msg->command_attributes($attr);
}

sub renew_parse
{
 my ($xcp,$otype,$oaction,$oname,$rinfo)=@_;
 my $mes=$xcp->message();
 return unless $mes->is_success();

 $rinfo->{domain}->{$oname}->{action}='renew';
 my $ra=$mes->response_attributes();
 foreach (qw/auto_renew admin_email order_id id queue_request_id/) {
  $rinfo->{domain}->{$oname}->{$_} = $ra->{$_} if exists $ra->{$_};
 }
 my ($k,$v)=('registration expiration date', 'exDate');
 $ra->{$k}=~s/\s+/T/; ## with a little effort we become ISO8601
 $rinfo->{domain}->{$oname}->{$v}=$xcp->parse_iso8601($ra->{$k}) if defined($ra->{$k});
}

sub transfer_request
{
 my ($xcp,$domain,$rd)=@_;

 my $msg=$xcp->message();

 my %r=(action => 'simple_transfer', object => 'domain');

 my $domain_hash = {domain_name => $domain, auth_info => $rd->{"auth"}->{"pw"}};
 my $domain_array = [$domain_hash];
 
 $msg->command(\%r);
 $msg->command_attributes({domain_list => $domain_array});
}

sub transfer_request_parse
{
 my ($xcp,$otype,$oaction,$oname,$rinfo)=@_;
 my $mes=$xcp->message();
 return unless $mes->is_success();

 $rinfo->{domain}->{$oname}->{action}='simple_transfer';
 my $ra=$mes->response_attributes();
 foreach (qw/simple_transfer_job_id/) {
  $rinfo->{domain}->{$oname}->{$_} = $ra->{$_} if exists $ra->{$_};
 }
}

sub transfer_query
{
 my ($xcp,$domain,$rd)=@_;
 my $msg=$xcp->message();

 my $action;
 my $attributes;
 if(defined($rd->{'simple_transfer_job_id'}) && $rd->{'simple_transfer_job_id'} ne '') {
	#transfer was called after switch to simple transfer. 
	$action = 'simple_transfer_status';
	$attributes = {simple_transfer_job_id => $rd->{'simple_transfer_job_id'}};
 }
 else {
	#transfer was called before switch to simple transfer. Lets check status accordingly.
	$action = 'check_transfer';
	$attributes = {domain => $domain, check_status => 1, get_request_address => 1};
 }
 
 my %r=(action => $action, object => 'domain');
 $r{registrant_ip}=$rd->{registrant_ip} if exists $rd->{registrant_ip};

 $msg->command(\%r);
 $msg->command_attributes($attributes); # TBD: usable for checking transferability
}

sub transfer_query_parse
{
 my ($xcp,$otype,$oaction,$oname,$rinfo)=@_;
 my $mes=$xcp->message();
 return unless $mes->is_success();

 $rinfo->{domain}->{$oname}->{action}='simple_transfer_status';
 my $ra=$mes->response_attributes();
 #case when check_transfer was called
 foreach (qw/transferrable status request_address timestamp unixtime reason type noservice name id completion_date request_date/) {
  $rinfo->{domain}->{$oname}->{$_} = $ra->{$_} if exists $ra->{$_};
 }
 
 #case when simple_transfer_status was called. It's more relevant so it's processed later.
 if(defined($ra->{domain_list})) {
	# in this case, above status not valid.
	$rinfo->{domain}->{$oname}->{status} = undef;
	foreach my $d (@{$ra->{domain_list}}) {
		if($d->{domain_name} eq $oname) {
			foreach (qw/domain_name status registrant_id reason email_address/) {
			  $rinfo->{domain}->{$oname}->{$_} = $d->{$_} if exists $d->{$_};
			}
		}
	}
 }
}

sub transfer_cancel
{
 my ($xcp,$domain,$rd)=@_;
 my $msg=$xcp->message();

 Net::DRI::Exception::usererr_insufficient_parameters('Reseller ID is mandatory') unless (Net::DRI::Util::has_key($rd, 'reseller_id'));

 my %r=(action => 'cancel_transfer', object => 'transfer');
 $r{registrant_ip}=$rd->{registrant_ip} if exists $rd->{registrant_ip};

 $msg->command(\%r);
 $msg->command_attributes({domain => $domain, reseller => $rd->{reseller_id}}); # TBD: optional order ID
}

sub transfer_cancel_parse
{
 my ($xcp,$otype,$oaction,$oname,$rinfo)=@_;
 my $mes=$xcp->message();
 return unless $mes->is_success();

 $rinfo->{domain}->{$oname}->{action}='cancel_transfer';
 # This response has no attributes to capture
}

sub send_authcode
{
 my ($xcp,$domain,$rd)=@_;
 my $msg=$xcp->message();
 my %r=(action=>'send_authcode',object=>'domain');
 $msg->command(\%r);
 $msg->command_attributes({domain_name => $domain});
}

sub name_suggest
{
 my ($xcp,$domain,$rd)=@_;
 my $msg=$xcp->message();

 Net::DRI::Exception::usererr_insufficient_parameters('tlds parameter is mandatory') unless (Net::DRI::Util::has_key($rd, 'tlds'));

 my %r=(action=>'name_suggest',object=>'domain');
 $msg->command(\%r);
 $msg->command_attributes({ searchstring => $domain, services => Net::DRI::Util::has_key($rd, 'services') ? $rd->{"services"} : [ "lookup" ], tlds => $rd->{"tlds"} });
}

sub name_suggest_parse
{
 my ($xcp,$otype,$oaction,$oname,$rinfo)=@_;
 my $mes=$xcp->message();
 return unless $mes->is_success();

 $rinfo->{domain}->{$oname}->{action}='name_suggest';

 my $ra=$mes->response_attributes();
 foreach (qw/lookup suggestion premium personal_names/) {
  $rinfo->{domain}->{$oname}->{$_} = $ra->{$_} if exists $ra->{$_};
 }
}

####################################################################################################
1;
