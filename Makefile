# This Makefile is for the Net::DRI extension to perl.
#
# It was generated automatically by MakeMaker version
# 6.55_02 (Revision: 65502) from the contents of
# Makefile.PL. Don't edit this file, edit Makefile.PL instead.
#
#       ANY CHANGES MADE HERE WILL BE LOST!
#
#   MakeMaker ARGV: (q[INSTALLDIRS=vendor], q[create_packlist=0])
#

#   MakeMaker Parameters:

#     ABSTRACT => q[Interface to Domain Name Registries/Registrars/Resellers]
#     AUTHOR => q[Patrick Mevzek <netdri@dotandco.com>]
#     BUILD_REQUIRES => {  }
#     LICENSE => q[gpl]
#     NAME => q[Net::DRI]
#     PL_FILES => {  }
#     PREREQ_PM => { DateTime=>q[0], DateTime::Format::ISO8601=>q[0.06], IO::Socket::SSL=>q[0.90], Email::Valid=>q[0], IO::Socket::INET=>q[0], Class::Accessor=>q[0], DateTime::Format::Strptime=>q[0], Time::HiRes=>q[0], Carp=>q[0], DateTime::TimeZone=>q[0], Test::More=>q[0], Class::Accessor::Chained=>q[0], DateTime::Duration=>q[0], XML::LibXML=>q[1.61], UNIVERSAL::require=>q[0] }
#     VERSION_FROM => q[lib/Net/DRI.pm]
#     clean => { FILES=>q[Net-DRI-*] }
#     dist => { COMPRESS=>q[gzip -9f], SUFFIX=>q[gz] }

# --- MakeMaker post_initialize section:


# --- MakeMaker const_config section:

# These definitions are from config.sh (via /usr/lib/perl/5.10/Config.pm).
# They may have been overridden via Makefile.PL or on the command line.
AR = ar
CC = cc
CCCDLFLAGS = -fPIC
CCDLFLAGS = -Wl,-E
DLEXT = so
DLSRC = dl_dlopen.xs
EXE_EXT = 
FULL_AR = /usr/bin/ar
LD = cc
LDDLFLAGS = -shared -O2 -g -L/usr/local/lib -fstack-protector
LDFLAGS =  -fstack-protector -L/usr/local/lib
LIBC = /lib/libc-2.11.1.so
LIB_EXT = .a
OBJ_EXT = .o
OSNAME = linux
OSVERS = 2.6.24-27-server
RANLIB = :
SITELIBEXP = /usr/local/share/perl/5.10.1
SITEARCHEXP = /usr/local/lib/perl/5.10.1
SO = so
VENDORARCHEXP = /usr/lib/perl5
VENDORLIBEXP = /usr/share/perl5


# --- MakeMaker constants section:
AR_STATIC_ARGS = cr
DIRFILESEP = /
DFSEP = $(DIRFILESEP)
NAME = Net::DRI
NAME_SYM = Net_DRI
VERSION = 0.96
VERSION_MACRO = VERSION
VERSION_SYM = 0_96
DEFINE_VERSION = -D$(VERSION_MACRO)=\"$(VERSION)\"
XS_VERSION = 0.96
XS_VERSION_MACRO = XS_VERSION
XS_DEFINE_VERSION = -D$(XS_VERSION_MACRO)=\"$(XS_VERSION)\"
INST_ARCHLIB = blib/arch
INST_SCRIPT = blib/script
INST_BIN = blib/bin
INST_LIB = blib/lib
INST_MAN1DIR = blib/man1
INST_MAN3DIR = blib/man3
MAN1EXT = 1p
MAN3EXT = 3pm
INSTALLDIRS = vendor
DESTDIR = 
PREFIX = /usr
PERLPREFIX = $(PREFIX)
SITEPREFIX = $(PREFIX)/local
VENDORPREFIX = $(PREFIX)
INSTALLPRIVLIB = $(PERLPREFIX)/share/perl/5.10
DESTINSTALLPRIVLIB = $(DESTDIR)$(INSTALLPRIVLIB)
INSTALLSITELIB = $(SITEPREFIX)/share/perl/5.10.1
DESTINSTALLSITELIB = $(DESTDIR)$(INSTALLSITELIB)
INSTALLVENDORLIB = $(VENDORPREFIX)/share/perl5
DESTINSTALLVENDORLIB = $(DESTDIR)$(INSTALLVENDORLIB)
INSTALLARCHLIB = $(PERLPREFIX)/lib/perl/5.10
DESTINSTALLARCHLIB = $(DESTDIR)$(INSTALLARCHLIB)
INSTALLSITEARCH = $(SITEPREFIX)/lib/perl/5.10.1
DESTINSTALLSITEARCH = $(DESTDIR)$(INSTALLSITEARCH)
INSTALLVENDORARCH = $(VENDORPREFIX)/lib/perl5
DESTINSTALLVENDORARCH = $(DESTDIR)$(INSTALLVENDORARCH)
INSTALLBIN = $(PERLPREFIX)/bin
DESTINSTALLBIN = $(DESTDIR)$(INSTALLBIN)
INSTALLSITEBIN = $(SITEPREFIX)/bin
DESTINSTALLSITEBIN = $(DESTDIR)$(INSTALLSITEBIN)
INSTALLVENDORBIN = $(VENDORPREFIX)/bin
DESTINSTALLVENDORBIN = $(DESTDIR)$(INSTALLVENDORBIN)
INSTALLSCRIPT = $(PERLPREFIX)/bin
DESTINSTALLSCRIPT = $(DESTDIR)$(INSTALLSCRIPT)
INSTALLSITESCRIPT = $(SITEPREFIX)/bin
DESTINSTALLSITESCRIPT = $(DESTDIR)$(INSTALLSITESCRIPT)
INSTALLVENDORSCRIPT = $(VENDORPREFIX)/bin
DESTINSTALLVENDORSCRIPT = $(DESTDIR)$(INSTALLVENDORSCRIPT)
INSTALLMAN1DIR = $(PERLPREFIX)/share/man/man1
DESTINSTALLMAN1DIR = $(DESTDIR)$(INSTALLMAN1DIR)
INSTALLSITEMAN1DIR = $(SITEPREFIX)/man/man1
DESTINSTALLSITEMAN1DIR = $(DESTDIR)$(INSTALLSITEMAN1DIR)
INSTALLVENDORMAN1DIR = $(VENDORPREFIX)/share/man/man1
DESTINSTALLVENDORMAN1DIR = $(DESTDIR)$(INSTALLVENDORMAN1DIR)
INSTALLMAN3DIR = $(PERLPREFIX)/share/man/man3
DESTINSTALLMAN3DIR = $(DESTDIR)$(INSTALLMAN3DIR)
INSTALLSITEMAN3DIR = $(SITEPREFIX)/man/man3
DESTINSTALLSITEMAN3DIR = $(DESTDIR)$(INSTALLSITEMAN3DIR)
INSTALLVENDORMAN3DIR = $(VENDORPREFIX)/share/man/man3
DESTINSTALLVENDORMAN3DIR = $(DESTDIR)$(INSTALLVENDORMAN3DIR)
PERL_LIB = /usr/share/perl/5.10
PERL_ARCHLIB = /usr/lib/perl/5.10
LIBPERL_A = libperl.a
FIRST_MAKEFILE = Makefile
MAKEFILE_OLD = Makefile.old
MAKE_APERL_FILE = Makefile.aperl
PERLMAINCC = $(CC)
PERL_INC = /usr/lib/perl/5.10/CORE
PERL = /usr/bin/perl
FULLPERL = /usr/bin/perl
ABSPERL = $(PERL)
PERLRUN = $(PERL)
FULLPERLRUN = $(FULLPERL)
ABSPERLRUN = $(ABSPERL)
PERLRUNINST = $(PERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
FULLPERLRUNINST = $(FULLPERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
ABSPERLRUNINST = $(ABSPERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
PERL_CORE = 0
PERM_DIR = 755
PERM_RW = 644
PERM_RWX = 755

MAKEMAKER   = /usr/share/perl/5.10/ExtUtils/MakeMaker.pm
MM_VERSION  = 6.55_02
MM_REVISION = 65502

# FULLEXT = Pathname for extension directory (eg Foo/Bar/Oracle).
# BASEEXT = Basename part of FULLEXT. May be just equal FULLEXT. (eg Oracle)
# PARENT_NAME = NAME without BASEEXT and no trailing :: (eg Foo::Bar)
# DLBASE  = Basename part of dynamic library. May be just equal BASEEXT.
MAKE = make
FULLEXT = Net/DRI
BASEEXT = DRI
PARENT_NAME = Net
DLBASE = $(BASEEXT)
VERSION_FROM = lib/Net/DRI.pm
OBJECT = 
LDFROM = $(OBJECT)
LINKTYPE = dynamic
BOOTDEP = 

# Handy lists of source code files:
XS_FILES = 
C_FILES  = 
O_FILES  = 
H_FILES  = 
MAN1PODS = 
MAN3PODS = lib/Net/DRI.pm \
	lib/Net/DRI/BaseClass.pm \
	lib/Net/DRI/Cache.pm \
	lib/Net/DRI/DRD.pm \
	lib/Net/DRI/DRD/AERO.pm \
	lib/Net/DRI/DRD/AFNIC.pm \
	lib/Net/DRI/DRD/AG.pm \
	lib/Net/DRI/DRD/ARNES.pm \
	lib/Net/DRI/DRD/ASIA.pm \
	lib/Net/DRI/DRD/AT.pm \
	lib/Net/DRI/DRD/AU.pm \
	lib/Net/DRI/DRD/AdamsNames.pm \
	lib/Net/DRI/DRD/BE.pm \
	lib/Net/DRI/DRD/BIZ.pm \
	lib/Net/DRI/DRD/BR.pm \
	lib/Net/DRI/DRD/BZ.pm \
	lib/Net/DRI/DRD/BookMyName.pm \
	lib/Net/DRI/DRD/CAT.pm \
	lib/Net/DRI/DRD/CIRA.pm \
	lib/Net/DRI/DRD/COOP.pm \
	lib/Net/DRI/DRD/CZ.pm \
	lib/Net/DRI/DRD/CentralNic.pm \
	lib/Net/DRI/DRD/CoCCA.pm \
	lib/Net/DRI/DRD/DENIC.pm \
	lib/Net/DRI/DRD/EURid.pm \
	lib/Net/DRI/DRD/GL.pm \
	lib/Net/DRI/DRD/Gandi.pm \
	lib/Net/DRI/DRD/HN.pm \
	lib/Net/DRI/DRD/ICANN.pm \
	lib/Net/DRI/DRD/IENUMAT.pm \
	lib/Net/DRI/DRD/IM.pm \
	lib/Net/DRI/DRD/INFO.pm \
	lib/Net/DRI/DRD/IRegistry.pm \
	lib/Net/DRI/DRD/IT.pm \
	lib/Net/DRI/DRD/LC.pm \
	lib/Net/DRI/DRD/LU.pm \
	lib/Net/DRI/DRD/ME.pm \
	lib/Net/DRI/DRD/MN.pm \
	lib/Net/DRI/DRD/MOBI.pm \
	lib/Net/DRI/DRD/NAME.pm \
	lib/Net/DRI/DRD/NO.pm \
	lib/Net/DRI/DRD/NU.pm \
	lib/Net/DRI/DRD/Nominet.pm \
	lib/Net/DRI/DRD/ORG.pm \
	lib/Net/DRI/DRD/OVH.pm \
	lib/Net/DRI/DRD/OpenSRS.pm \
	lib/Net/DRI/DRD/PL.pm \
	lib/Net/DRI/DRD/PRO.pm \
	lib/Net/DRI/DRD/PT.pm \
	lib/Net/DRI/DRD/RFC.pm \
	lib/Net/DRI/DRD/SC.pm \
	lib/Net/DRI/DRD/SE.pm \
	lib/Net/DRI/DRD/SIDN.pm \
	lib/Net/DRI/DRD/SWITCH.pm \
	lib/Net/DRI/DRD/TRAVEL.pm \
	lib/Net/DRI/DRD/US.pm \
	lib/Net/DRI/DRD/VC.pm \
	lib/Net/DRI/DRD/VNDS.pm \
	lib/Net/DRI/DRD/WS.pm \
	lib/Net/DRI/Data/Changes.pm \
	lib/Net/DRI/Data/Contact.pm \
	lib/Net/DRI/Data/Contact/AERO.pm \
	lib/Net/DRI/Data/Contact/AFNIC.pm \
	lib/Net/DRI/Data/Contact/ARNES.pm \
	lib/Net/DRI/Data/Contact/ASIA.pm \
	lib/Net/DRI/Data/Contact/AT.pm \
	lib/Net/DRI/Data/Contact/BE.pm \
	lib/Net/DRI/Data/Contact/BR.pm \
	lib/Net/DRI/Data/Contact/CAT.pm \
	lib/Net/DRI/Data/Contact/CIRA.pm \
	lib/Net/DRI/Data/Contact/COOP.pm \
	lib/Net/DRI/Data/Contact/DENIC.pm \
	lib/Net/DRI/Data/Contact/EURid.pm \
	lib/Net/DRI/Data/Contact/FCCN.pm \
	lib/Net/DRI/Data/Contact/IT.pm \
	lib/Net/DRI/Data/Contact/JOBS.pm \
	lib/Net/DRI/Data/Contact/LU.pm \
	lib/Net/DRI/Data/Contact/NO.pm \
	lib/Net/DRI/Data/Contact/Nominet.pm \
	lib/Net/DRI/Data/Contact/OpenSRS.pm \
	lib/Net/DRI/Data/Contact/PL.pm \
	lib/Net/DRI/Data/Contact/SE.pm \
	lib/Net/DRI/Data/Contact/SIDN.pm \
	lib/Net/DRI/Data/Contact/SWITCH.pm \
	lib/Net/DRI/Data/Contact/US.pm \
	lib/Net/DRI/Data/ContactSet.pm \
	lib/Net/DRI/Data/Hosts.pm \
	lib/Net/DRI/Data/Raw.pm \
	lib/Net/DRI/Data/RegistryObject.pm \
	lib/Net/DRI/Data/StatusList.pm \
	lib/Net/DRI/Exception.pm \
	lib/Net/DRI/Logging.pm \
	lib/Net/DRI/Logging/Files.pm \
	lib/Net/DRI/Logging/Null.pm \
	lib/Net/DRI/Logging/Stderr.pm \
	lib/Net/DRI/Logging/Syslog.pm \
	lib/Net/DRI/Protocol.pm \
	lib/Net/DRI/Protocol/AFNIC/Email.pm \
	lib/Net/DRI/Protocol/AFNIC/Email/Domain.pm \
	lib/Net/DRI/Protocol/AFNIC/Email/Message.pm \
	lib/Net/DRI/Protocol/AFNIC/WS.pm \
	lib/Net/DRI/Protocol/AFNIC/WS/Domain.pm \
	lib/Net/DRI/Protocol/AFNIC/WS/Message.pm \
	lib/Net/DRI/Protocol/AdamsNames/WS.pm \
	lib/Net/DRI/Protocol/AdamsNames/WS/Connection.pm \
	lib/Net/DRI/Protocol/AdamsNames/WS/Domain.pm \
	lib/Net/DRI/Protocol/AdamsNames/WS/Message.pm \
	lib/Net/DRI/Protocol/BookMyName/WS.pm \
	lib/Net/DRI/Protocol/BookMyName/WS/Account.pm \
	lib/Net/DRI/Protocol/BookMyName/WS/Domain.pm \
	lib/Net/DRI/Protocol/BookMyName/WS/Message.pm \
	lib/Net/DRI/Protocol/DAS.pm \
	lib/Net/DRI/Protocol/DAS/AU.pm \
	lib/Net/DRI/Protocol/DAS/AU/Connection.pm \
	lib/Net/DRI/Protocol/DAS/AU/Domain.pm \
	lib/Net/DRI/Protocol/DAS/AU/Message.pm \
	lib/Net/DRI/Protocol/DAS/AdamsNames.pm \
	lib/Net/DRI/Protocol/DAS/AdamsNames/Connection.pm \
	lib/Net/DRI/Protocol/DAS/AdamsNames/Domain.pm \
	lib/Net/DRI/Protocol/DAS/AdamsNames/Message.pm \
	lib/Net/DRI/Protocol/DAS/Connection.pm \
	lib/Net/DRI/Protocol/DAS/Domain.pm \
	lib/Net/DRI/Protocol/DAS/Message.pm \
	lib/Net/DRI/Protocol/DAS/SIDN.pm \
	lib/Net/DRI/Protocol/DAS/SIDN/Connection.pm \
	lib/Net/DRI/Protocol/DAS/SIDN/Domain.pm \
	lib/Net/DRI/Protocol/DAS/SIDN/Message.pm \
	lib/Net/DRI/Protocol/EPP.pm \
	lib/Net/DRI/Protocol/EPP/Connection.pm \
	lib/Net/DRI/Protocol/EPP/Core/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Core/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Core/Host.pm \
	lib/Net/DRI/Protocol/EPP/Core/RegistryMessage.pm \
	lib/Net/DRI/Protocol/EPP/Core/Session.pm \
	lib/Net/DRI/Protocol/EPP/Core/Status.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AERO.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AERO/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AERO/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AFNIC.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AFNIC/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AFNIC/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AFNIC/Notifications.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AFNIC/Status.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/ARNES.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/ARNES/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/ARNES/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/ASIA.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/ASIA/CED.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/ASIA/IPR.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AT.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AT/ATResult.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AT/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AT/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AT/IOptions.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AT/Message.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AT/Result.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AU.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AU/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Afilias.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Afilias/IDNLanguage.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Afilias/Restore.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/BIZ.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/BR.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/BR/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/BR/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CAT.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CAT/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CAT/DefensiveRegistration.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CAT/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CIRA.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CIRA/Agreement.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CIRA/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CIRA/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CIRA/Notifications.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/COOP.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/COOP/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CZ.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CZ/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CZ/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CZ/NSSET.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CentralNic.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CentralNic/Release.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CentralNic/TTL.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CentralNic/WebForwarding.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/DNSBE.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/DNSBE/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/DNSBE/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/DNSBE/Message.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/E164.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/E164Validation.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/E164Validation/RFC5076.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/EURid.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/EURid/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/EURid/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/EURid/Message.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/EURid/Notifications.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/EURid/Registrar.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/EURid/Sunrise.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/FCCN.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/FCCN/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/FCCN/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/GracePeriod.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/HTTP.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/IENUMAT.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/IRegistry.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/IT.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/IT/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/IT/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/IT/Notifications.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/LU.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/LU/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/LU/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/LU/Poll.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/LU/Status.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/MOBI.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/MOBI/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NAME.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NAME/EmailFwd.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NO.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NO/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NO/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NO/Host.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NO/Message.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NO/Result.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NSgroup.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NeuLevel.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NeuLevel/IDNLanguage.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NeuLevel/UIN.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Nominet.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Account.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Host.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Notifications.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/PL.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/PL/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/PL/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/PL/Message.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/PRO.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/PRO/AV.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/PRO/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SE.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SE/Extensions.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SE/Message.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SIDN.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Host.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Message.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Notifications.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SWITCH.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SecDNS.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SecDNS11.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/US.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/US/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/VeriSign.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/IDNLanguage.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/JobsContact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/NameStore.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/PollLowBalance.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/PollRGP.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/Sync.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/WhoisInfo.pm \
	lib/Net/DRI/Protocol/EPP/Message.pm \
	lib/Net/DRI/Protocol/EPP/Util.pm \
	lib/Net/DRI/Protocol/Gandi/WS.pm \
	lib/Net/DRI/Protocol/Gandi/WS/Account.pm \
	lib/Net/DRI/Protocol/Gandi/WS/Connection.pm \
	lib/Net/DRI/Protocol/Gandi/WS/Domain.pm \
	lib/Net/DRI/Protocol/Gandi/WS/Message.pm \
	lib/Net/DRI/Protocol/IRIS.pm \
	lib/Net/DRI/Protocol/IRIS/Core.pm \
	lib/Net/DRI/Protocol/IRIS/DCHK/Domain.pm \
	lib/Net/DRI/Protocol/IRIS/DCHK/Status.pm \
	lib/Net/DRI/Protocol/IRIS/LWZ.pm \
	lib/Net/DRI/Protocol/IRIS/Message.pm \
	lib/Net/DRI/Protocol/IRIS/XCP.pm \
	lib/Net/DRI/Protocol/Message.pm \
	lib/Net/DRI/Protocol/OVH/WS.pm \
	lib/Net/DRI/Protocol/OVH/WS/Account.pm \
	lib/Net/DRI/Protocol/OVH/WS/Connection.pm \
	lib/Net/DRI/Protocol/OVH/WS/Domain.pm \
	lib/Net/DRI/Protocol/OVH/WS/Message.pm \
	lib/Net/DRI/Protocol/OpenSRS/XCP.pm \
	lib/Net/DRI/Protocol/OpenSRS/XCP/Account.pm \
	lib/Net/DRI/Protocol/OpenSRS/XCP/Connection.pm \
	lib/Net/DRI/Protocol/OpenSRS/XCP/Domain.pm \
	lib/Net/DRI/Protocol/OpenSRS/XCP/Host.pm \
	lib/Net/DRI/Protocol/OpenSRS/XCP/Message.pm \
	lib/Net/DRI/Protocol/OpenSRS/XCP/Session.pm \
	lib/Net/DRI/Protocol/RRI.pm \
	lib/Net/DRI/Protocol/RRI/Connection.pm \
	lib/Net/DRI/Protocol/RRI/Contact.pm \
	lib/Net/DRI/Protocol/RRI/Domain.pm \
	lib/Net/DRI/Protocol/RRI/Message.pm \
	lib/Net/DRI/Protocol/RRI/RegistryMessage.pm \
	lib/Net/DRI/Protocol/RRI/Session.pm \
	lib/Net/DRI/Protocol/RRP.pm \
	lib/Net/DRI/Protocol/RRP/Connection.pm \
	lib/Net/DRI/Protocol/RRP/Core/Domain.pm \
	lib/Net/DRI/Protocol/RRP/Core/Host.pm \
	lib/Net/DRI/Protocol/RRP/Core/Session.pm \
	lib/Net/DRI/Protocol/RRP/Core/Status.pm \
	lib/Net/DRI/Protocol/RRP/Message.pm \
	lib/Net/DRI/Protocol/ResultStatus.pm \
	lib/Net/DRI/Protocol/Whois.pm \
	lib/Net/DRI/Protocol/Whois/Connection.pm \
	lib/Net/DRI/Protocol/Whois/Domain/AERO.pm \
	lib/Net/DRI/Protocol/Whois/Domain/AT.pm \
	lib/Net/DRI/Protocol/Whois/Domain/BIZ.pm \
	lib/Net/DRI/Protocol/Whois/Domain/CAT.pm \
	lib/Net/DRI/Protocol/Whois/Domain/COM.pm \
	lib/Net/DRI/Protocol/Whois/Domain/EU.pm \
	lib/Net/DRI/Protocol/Whois/Domain/INFO.pm \
	lib/Net/DRI/Protocol/Whois/Domain/LU.pm \
	lib/Net/DRI/Protocol/Whois/Domain/MOBI.pm \
	lib/Net/DRI/Protocol/Whois/Domain/NAME.pm \
	lib/Net/DRI/Protocol/Whois/Domain/ORG.pm \
	lib/Net/DRI/Protocol/Whois/Domain/PT.pm \
	lib/Net/DRI/Protocol/Whois/Domain/SE.pm \
	lib/Net/DRI/Protocol/Whois/Domain/TRAVEL.pm \
	lib/Net/DRI/Protocol/Whois/Domain/US.pm \
	lib/Net/DRI/Protocol/Whois/Domain/WS.pm \
	lib/Net/DRI/Protocol/Whois/Domain/common.pm \
	lib/Net/DRI/Protocol/Whois/Message.pm \
	lib/Net/DRI/Registry.pm \
	lib/Net/DRI/Shell.pm \
	lib/Net/DRI/Transport.pm \
	lib/Net/DRI/Transport/Defer.pm \
	lib/Net/DRI/Transport/Dummy.pm \
	lib/Net/DRI/Transport/HTTP.pm \
	lib/Net/DRI/Transport/HTTP/SOAPLite.pm \
	lib/Net/DRI/Transport/HTTP/SOAPWSDL.pm \
	lib/Net/DRI/Transport/HTTP/XMLRPCLite.pm \
	lib/Net/DRI/Transport/SMTP.pm \
	lib/Net/DRI/Transport/SOAP.pm \
	lib/Net/DRI/Transport/Socket.pm \
	lib/Net/DRI/Util.pm

# Where is the Config information that we are using/depend on
CONFIGDEP = $(PERL_ARCHLIB)$(DFSEP)Config.pm $(PERL_INC)$(DFSEP)config.h

# Where to build things
INST_LIBDIR      = $(INST_LIB)/Net
INST_ARCHLIBDIR  = $(INST_ARCHLIB)/Net

INST_AUTODIR     = $(INST_LIB)/auto/$(FULLEXT)
INST_ARCHAUTODIR = $(INST_ARCHLIB)/auto/$(FULLEXT)

INST_STATIC      = 
INST_DYNAMIC     = 
INST_BOOT        = 

# Extra linker info
EXPORT_LIST        = 
PERL_ARCHIVE       = 
PERL_ARCHIVE_AFTER = 


TO_INST_PM = lib/Net/DRI.pm \
	lib/Net/DRI/BaseClass.pm \
	lib/Net/DRI/Cache.pm \
	lib/Net/DRI/DRD.pm \
	lib/Net/DRI/DRD/AERO.pm \
	lib/Net/DRI/DRD/AFNIC.pm \
	lib/Net/DRI/DRD/AG.pm \
	lib/Net/DRI/DRD/ARNES.pm \
	lib/Net/DRI/DRD/ASIA.pm \
	lib/Net/DRI/DRD/AT.pm \
	lib/Net/DRI/DRD/AU.pm \
	lib/Net/DRI/DRD/AdamsNames.pm \
	lib/Net/DRI/DRD/BE.pm \
	lib/Net/DRI/DRD/BIZ.pm \
	lib/Net/DRI/DRD/BR.pm \
	lib/Net/DRI/DRD/BZ.pm \
	lib/Net/DRI/DRD/BookMyName.pm \
	lib/Net/DRI/DRD/CAT.pm \
	lib/Net/DRI/DRD/CIRA.pm \
	lib/Net/DRI/DRD/COOP.pm \
	lib/Net/DRI/DRD/CZ.pm \
	lib/Net/DRI/DRD/CentralNic.pm \
	lib/Net/DRI/DRD/CoCCA.pm \
	lib/Net/DRI/DRD/DENIC.pm \
	lib/Net/DRI/DRD/EURid.pm \
	lib/Net/DRI/DRD/GL.pm \
	lib/Net/DRI/DRD/Gandi.pm \
	lib/Net/DRI/DRD/HN.pm \
	lib/Net/DRI/DRD/ICANN.pm \
	lib/Net/DRI/DRD/IENUMAT.pm \
	lib/Net/DRI/DRD/IM.pm \
	lib/Net/DRI/DRD/INFO.pm \
	lib/Net/DRI/DRD/IRegistry.pm \
	lib/Net/DRI/DRD/IT.pm \
	lib/Net/DRI/DRD/LC.pm \
	lib/Net/DRI/DRD/LU.pm \
	lib/Net/DRI/DRD/ME.pm \
	lib/Net/DRI/DRD/MN.pm \
	lib/Net/DRI/DRD/MOBI.pm \
	lib/Net/DRI/DRD/NAME.pm \
	lib/Net/DRI/DRD/NO.pm \
	lib/Net/DRI/DRD/NU.pm \
	lib/Net/DRI/DRD/Nominet.pm \
	lib/Net/DRI/DRD/ORG.pm \
	lib/Net/DRI/DRD/OVH.pm \
	lib/Net/DRI/DRD/OpenSRS.pm \
	lib/Net/DRI/DRD/PL.pm \
	lib/Net/DRI/DRD/PRO.pm \
	lib/Net/DRI/DRD/PT.pm \
	lib/Net/DRI/DRD/RFC.pm \
	lib/Net/DRI/DRD/SC.pm \
	lib/Net/DRI/DRD/SE.pm \
	lib/Net/DRI/DRD/SIDN.pm \
	lib/Net/DRI/DRD/SWITCH.pm \
	lib/Net/DRI/DRD/TRAVEL.pm \
	lib/Net/DRI/DRD/US.pm \
	lib/Net/DRI/DRD/VC.pm \
	lib/Net/DRI/DRD/VNDS.pm \
	lib/Net/DRI/DRD/WS.pm \
	lib/Net/DRI/Data/Changes.pm \
	lib/Net/DRI/Data/Contact.pm \
	lib/Net/DRI/Data/Contact/AERO.pm \
	lib/Net/DRI/Data/Contact/AFNIC.pm \
	lib/Net/DRI/Data/Contact/ARNES.pm \
	lib/Net/DRI/Data/Contact/ASIA.pm \
	lib/Net/DRI/Data/Contact/AT.pm \
	lib/Net/DRI/Data/Contact/BE.pm \
	lib/Net/DRI/Data/Contact/BR.pm \
	lib/Net/DRI/Data/Contact/CAT.pm \
	lib/Net/DRI/Data/Contact/CIRA.pm \
	lib/Net/DRI/Data/Contact/COOP.pm \
	lib/Net/DRI/Data/Contact/DENIC.pm \
	lib/Net/DRI/Data/Contact/EURid.pm \
	lib/Net/DRI/Data/Contact/FCCN.pm \
	lib/Net/DRI/Data/Contact/IT.pm \
	lib/Net/DRI/Data/Contact/JOBS.pm \
	lib/Net/DRI/Data/Contact/LU.pm \
	lib/Net/DRI/Data/Contact/NO.pm \
	lib/Net/DRI/Data/Contact/Nominet.pm \
	lib/Net/DRI/Data/Contact/OpenSRS.pm \
	lib/Net/DRI/Data/Contact/PL.pm \
	lib/Net/DRI/Data/Contact/SE.pm \
	lib/Net/DRI/Data/Contact/SIDN.pm \
	lib/Net/DRI/Data/Contact/SWITCH.pm \
	lib/Net/DRI/Data/Contact/US.pm \
	lib/Net/DRI/Data/ContactSet.pm \
	lib/Net/DRI/Data/Hosts.pm \
	lib/Net/DRI/Data/Raw.pm \
	lib/Net/DRI/Data/RegistryObject.pm \
	lib/Net/DRI/Data/StatusList.pm \
	lib/Net/DRI/Exception.pm \
	lib/Net/DRI/Logging.pm \
	lib/Net/DRI/Logging/Files.pm \
	lib/Net/DRI/Logging/Null.pm \
	lib/Net/DRI/Logging/Stderr.pm \
	lib/Net/DRI/Logging/Syslog.pm \
	lib/Net/DRI/Protocol.pm \
	lib/Net/DRI/Protocol/AFNIC/Email.pm \
	lib/Net/DRI/Protocol/AFNIC/Email/Domain.pm \
	lib/Net/DRI/Protocol/AFNIC/Email/Message.pm \
	lib/Net/DRI/Protocol/AFNIC/WS.pm \
	lib/Net/DRI/Protocol/AFNIC/WS/Domain.pm \
	lib/Net/DRI/Protocol/AFNIC/WS/Message.pm \
	lib/Net/DRI/Protocol/AdamsNames/WS.pm \
	lib/Net/DRI/Protocol/AdamsNames/WS/Connection.pm \
	lib/Net/DRI/Protocol/AdamsNames/WS/Domain.pm \
	lib/Net/DRI/Protocol/AdamsNames/WS/Message.pm \
	lib/Net/DRI/Protocol/BookMyName/WS.pm \
	lib/Net/DRI/Protocol/BookMyName/WS/Account.pm \
	lib/Net/DRI/Protocol/BookMyName/WS/Domain.pm \
	lib/Net/DRI/Protocol/BookMyName/WS/Message.pm \
	lib/Net/DRI/Protocol/DAS.pm \
	lib/Net/DRI/Protocol/DAS/AU.pm \
	lib/Net/DRI/Protocol/DAS/AU/Connection.pm \
	lib/Net/DRI/Protocol/DAS/AU/Domain.pm \
	lib/Net/DRI/Protocol/DAS/AU/Message.pm \
	lib/Net/DRI/Protocol/DAS/AdamsNames.pm \
	lib/Net/DRI/Protocol/DAS/AdamsNames/Connection.pm \
	lib/Net/DRI/Protocol/DAS/AdamsNames/Domain.pm \
	lib/Net/DRI/Protocol/DAS/AdamsNames/Message.pm \
	lib/Net/DRI/Protocol/DAS/Connection.pm \
	lib/Net/DRI/Protocol/DAS/Domain.pm \
	lib/Net/DRI/Protocol/DAS/Message.pm \
	lib/Net/DRI/Protocol/DAS/SIDN.pm \
	lib/Net/DRI/Protocol/DAS/SIDN/Connection.pm \
	lib/Net/DRI/Protocol/DAS/SIDN/Domain.pm \
	lib/Net/DRI/Protocol/DAS/SIDN/Message.pm \
	lib/Net/DRI/Protocol/EPP.pm \
	lib/Net/DRI/Protocol/EPP/Connection.pm \
	lib/Net/DRI/Protocol/EPP/Core/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Core/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Core/Host.pm \
	lib/Net/DRI/Protocol/EPP/Core/RegistryMessage.pm \
	lib/Net/DRI/Protocol/EPP/Core/Session.pm \
	lib/Net/DRI/Protocol/EPP/Core/Status.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AERO.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AERO/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AERO/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AFNIC.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AFNIC/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AFNIC/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AFNIC/Notifications.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AFNIC/Status.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/ARNES.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/ARNES/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/ARNES/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/ASIA.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/ASIA/CED.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/ASIA/IPR.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AT.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AT/ATResult.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AT/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AT/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AT/IOptions.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AT/Message.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AT/Result.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AU.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AU/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Afilias.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Afilias/IDNLanguage.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Afilias/Restore.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/BIZ.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/BR.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/BR/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/BR/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CAT.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CAT/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CAT/DefensiveRegistration.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CAT/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CIRA.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CIRA/Agreement.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CIRA/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CIRA/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CIRA/Notifications.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/COOP.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/COOP/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CZ.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CZ/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CZ/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CZ/NSSET.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CentralNic.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CentralNic/Release.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CentralNic/TTL.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CentralNic/WebForwarding.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/DNSBE.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/DNSBE/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/DNSBE/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/DNSBE/Message.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/E164.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/E164Validation.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/E164Validation/RFC5076.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/EURid.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/EURid/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/EURid/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/EURid/Message.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/EURid/Notifications.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/EURid/Registrar.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/EURid/Sunrise.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/FCCN.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/FCCN/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/FCCN/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/GracePeriod.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/HTTP.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/IENUMAT.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/IRegistry.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/IT.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/IT/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/IT/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/IT/Notifications.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/LU.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/LU/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/LU/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/LU/Poll.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/LU/Status.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/MOBI.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/MOBI/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NAME.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NAME/EmailFwd.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NO.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NO/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NO/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NO/Host.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NO/Message.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NO/Result.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NSgroup.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NeuLevel.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NeuLevel/IDNLanguage.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NeuLevel/UIN.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Nominet.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Account.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Host.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Notifications.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/PL.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/PL/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/PL/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/PL/Message.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/PRO.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/PRO/AV.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/PRO/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SE.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SE/Extensions.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SE/Message.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SIDN.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Host.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Message.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Notifications.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SWITCH.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SecDNS.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SecDNS11.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/US.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/US/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/VeriSign.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/IDNLanguage.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/JobsContact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/NameStore.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/PollLowBalance.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/PollRGP.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/Sync.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/WhoisInfo.pm \
	lib/Net/DRI/Protocol/EPP/Message.pm \
	lib/Net/DRI/Protocol/EPP/Util.pm \
	lib/Net/DRI/Protocol/Gandi/WS.pm \
	lib/Net/DRI/Protocol/Gandi/WS/Account.pm \
	lib/Net/DRI/Protocol/Gandi/WS/Connection.pm \
	lib/Net/DRI/Protocol/Gandi/WS/Domain.pm \
	lib/Net/DRI/Protocol/Gandi/WS/Message.pm \
	lib/Net/DRI/Protocol/IRIS.pm \
	lib/Net/DRI/Protocol/IRIS/Core.pm \
	lib/Net/DRI/Protocol/IRIS/DCHK/Domain.pm \
	lib/Net/DRI/Protocol/IRIS/DCHK/Status.pm \
	lib/Net/DRI/Protocol/IRIS/LWZ.pm \
	lib/Net/DRI/Protocol/IRIS/Message.pm \
	lib/Net/DRI/Protocol/IRIS/XCP.pm \
	lib/Net/DRI/Protocol/Message.pm \
	lib/Net/DRI/Protocol/OVH/WS.pm \
	lib/Net/DRI/Protocol/OVH/WS/Account.pm \
	lib/Net/DRI/Protocol/OVH/WS/Connection.pm \
	lib/Net/DRI/Protocol/OVH/WS/Domain.pm \
	lib/Net/DRI/Protocol/OVH/WS/Message.pm \
	lib/Net/DRI/Protocol/OpenSRS/XCP.pm \
	lib/Net/DRI/Protocol/OpenSRS/XCP/Account.pm \
	lib/Net/DRI/Protocol/OpenSRS/XCP/Connection.pm \
	lib/Net/DRI/Protocol/OpenSRS/XCP/Domain.pm \
	lib/Net/DRI/Protocol/OpenSRS/XCP/Host.pm \
	lib/Net/DRI/Protocol/OpenSRS/XCP/Message.pm \
	lib/Net/DRI/Protocol/OpenSRS/XCP/Session.pm \
	lib/Net/DRI/Protocol/RRI.pm \
	lib/Net/DRI/Protocol/RRI/Connection.pm \
	lib/Net/DRI/Protocol/RRI/Contact.pm \
	lib/Net/DRI/Protocol/RRI/Domain.pm \
	lib/Net/DRI/Protocol/RRI/Message.pm \
	lib/Net/DRI/Protocol/RRI/RegistryMessage.pm \
	lib/Net/DRI/Protocol/RRI/Session.pm \
	lib/Net/DRI/Protocol/RRP.pm \
	lib/Net/DRI/Protocol/RRP/Connection.pm \
	lib/Net/DRI/Protocol/RRP/Core/Domain.pm \
	lib/Net/DRI/Protocol/RRP/Core/Host.pm \
	lib/Net/DRI/Protocol/RRP/Core/Session.pm \
	lib/Net/DRI/Protocol/RRP/Core/Status.pm \
	lib/Net/DRI/Protocol/RRP/Message.pm \
	lib/Net/DRI/Protocol/ResultStatus.pm \
	lib/Net/DRI/Protocol/Whois.pm \
	lib/Net/DRI/Protocol/Whois/Connection.pm \
	lib/Net/DRI/Protocol/Whois/Domain/AERO.pm \
	lib/Net/DRI/Protocol/Whois/Domain/AT.pm \
	lib/Net/DRI/Protocol/Whois/Domain/BIZ.pm \
	lib/Net/DRI/Protocol/Whois/Domain/CAT.pm \
	lib/Net/DRI/Protocol/Whois/Domain/COM.pm \
	lib/Net/DRI/Protocol/Whois/Domain/EU.pm \
	lib/Net/DRI/Protocol/Whois/Domain/INFO.pm \
	lib/Net/DRI/Protocol/Whois/Domain/LU.pm \
	lib/Net/DRI/Protocol/Whois/Domain/MOBI.pm \
	lib/Net/DRI/Protocol/Whois/Domain/NAME.pm \
	lib/Net/DRI/Protocol/Whois/Domain/ORG.pm \
	lib/Net/DRI/Protocol/Whois/Domain/PT.pm \
	lib/Net/DRI/Protocol/Whois/Domain/SE.pm \
	lib/Net/DRI/Protocol/Whois/Domain/TRAVEL.pm \
	lib/Net/DRI/Protocol/Whois/Domain/US.pm \
	lib/Net/DRI/Protocol/Whois/Domain/WS.pm \
	lib/Net/DRI/Protocol/Whois/Domain/common.pm \
	lib/Net/DRI/Protocol/Whois/Message.pm \
	lib/Net/DRI/Registry.pm \
	lib/Net/DRI/Shell.pm \
	lib/Net/DRI/Transport.pm \
	lib/Net/DRI/Transport/Defer.pm \
	lib/Net/DRI/Transport/Dummy.pm \
	lib/Net/DRI/Transport/HTTP.pm \
	lib/Net/DRI/Transport/HTTP/SOAPLite.pm \
	lib/Net/DRI/Transport/HTTP/SOAPWSDL.pm \
	lib/Net/DRI/Transport/HTTP/XMLRPCLite.pm \
	lib/Net/DRI/Transport/SMTP.pm \
	lib/Net/DRI/Transport/SOAP.pm \
	lib/Net/DRI/Transport/Socket.pm \
	lib/Net/DRI/Util.pm

PM_TO_BLIB = lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Host.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Host.pm \
	lib/Net/DRI/Protocol/RRI/RegistryMessage.pm \
	blib/lib/Net/DRI/Protocol/RRI/RegistryMessage.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AFNIC/Domain.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/AFNIC/Domain.pm \
	lib/Net/DRI/Protocol/OVH/WS.pm \
	blib/lib/Net/DRI/Protocol/OVH/WS.pm \
	lib/Net/DRI/DRD/PL.pm \
	blib/lib/Net/DRI/DRD/PL.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/Sync.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/Sync.pm \
	lib/Net/DRI/DRD/AFNIC.pm \
	blib/lib/Net/DRI/DRD/AFNIC.pm \
	lib/Net/DRI/Protocol/Gandi/WS/Message.pm \
	blib/lib/Net/DRI/Protocol/Gandi/WS/Message.pm \
	lib/Net/DRI/Transport/Socket.pm \
	blib/lib/Net/DRI/Transport/Socket.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/BR/Contact.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/BR/Contact.pm \
	lib/Net/DRI/DRD/TRAVEL.pm \
	blib/lib/Net/DRI/DRD/TRAVEL.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AERO/Domain.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/AERO/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/MOBI.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/MOBI.pm \
	lib/Net/DRI/Protocol/DAS/AdamsNames/Message.pm \
	blib/lib/Net/DRI/Protocol/DAS/AdamsNames/Message.pm \
	lib/Net/DRI/DRD/BIZ.pm \
	blib/lib/Net/DRI/DRD/BIZ.pm \
	lib/Net/DRI/Protocol/RRP/Core/Host.pm \
	blib/lib/Net/DRI/Protocol/RRP/Core/Host.pm \
	lib/Net/DRI/Transport.pm \
	blib/lib/Net/DRI/Transport.pm \
	lib/Net/DRI/Protocol/Whois/Domain/CAT.pm \
	blib/lib/Net/DRI/Protocol/Whois/Domain/CAT.pm \
	lib/Net/DRI/DRD/ORG.pm \
	blib/lib/Net/DRI/DRD/ORG.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AT/Contact.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/AT/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/E164Validation/RFC5076.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/E164Validation/RFC5076.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/IT/Contact.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/IT/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Notifications.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Notifications.pm \
	lib/Net/DRI/Protocol/EPP/Core/Status.pm \
	blib/lib/Net/DRI/Protocol/EPP/Core/Status.pm \
	lib/Net/DRI/DRD/ARNES.pm \
	blib/lib/Net/DRI/DRD/ARNES.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/ASIA.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/ASIA.pm \
	lib/Net/DRI/Protocol/Message.pm \
	blib/lib/Net/DRI/Protocol/Message.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AT/Message.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/AT/Message.pm \
	lib/Net/DRI/DRD/OVH.pm \
	blib/lib/Net/DRI/DRD/OVH.pm \
	lib/Net/DRI/DRD/LU.pm \
	blib/lib/Net/DRI/DRD/LU.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CAT.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/CAT.pm \
	lib/Net/DRI/Protocol/IRIS/DCHK/Domain.pm \
	blib/lib/Net/DRI/Protocol/IRIS/DCHK/Domain.pm \
	lib/Net/DRI/Protocol/Whois/Domain/US.pm \
	blib/lib/Net/DRI/Protocol/Whois/Domain/US.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/MOBI/Domain.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/MOBI/Domain.pm \
	lib/Net/DRI/Protocol/DAS/AU/Domain.pm \
	blib/lib/Net/DRI/Protocol/DAS/AU/Domain.pm \
	lib/Net/DRI/Protocol/RRP/Message.pm \
	blib/lib/Net/DRI/Protocol/RRP/Message.pm \
	lib/Net/DRI/Transport/HTTP/SOAPLite.pm \
	blib/lib/Net/DRI/Transport/HTTP/SOAPLite.pm \
	lib/Net/DRI/Protocol/DAS/SIDN/Connection.pm \
	blib/lib/Net/DRI/Protocol/DAS/SIDN/Connection.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SIDN.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/SIDN.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/BR/Domain.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/BR/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Afilias/IDNLanguage.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/Afilias/IDNLanguage.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AERO.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/AERO.pm \
	lib/Net/DRI/DRD/EURid.pm \
	blib/lib/Net/DRI/DRD/EURid.pm \
	lib/Net/DRI/Protocol/Whois/Message.pm \
	blib/lib/Net/DRI/Protocol/Whois/Message.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/LU/Poll.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/LU/Poll.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/FCCN/Domain.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/FCCN/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/LU/Domain.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/LU/Domain.pm \
	lib/Net/DRI/Data/Contact/ASIA.pm \
	blib/lib/Net/DRI/Data/Contact/ASIA.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AT/Domain.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/AT/Domain.pm \
	lib/Net/DRI/Protocol/Whois.pm \
	blib/lib/Net/DRI/Protocol/Whois.pm \
	lib/Net/DRI/DRD/VC.pm \
	blib/lib/Net/DRI/DRD/VC.pm \
	lib/Net/DRI/Protocol/EPP/Core/Domain.pm \
	blib/lib/Net/DRI/Protocol/EPP/Core/Domain.pm \
	lib/Net/DRI/Data/Contact/CAT.pm \
	blib/lib/Net/DRI/Data/Contact/CAT.pm \
	lib/Net/DRI/Data/Hosts.pm \
	blib/lib/Net/DRI/Data/Hosts.pm \
	lib/Net/DRI/DRD/BE.pm \
	blib/lib/Net/DRI/DRD/BE.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/ARNES.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/ARNES.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SE/Extensions.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/SE/Extensions.pm \
	lib/Net/DRI/DRD/NO.pm \
	blib/lib/Net/DRI/DRD/NO.pm \
	lib/Net/DRI/DRD/ME.pm \
	blib/lib/Net/DRI/DRD/ME.pm \
	lib/Net/DRI/Data/ContactSet.pm \
	blib/lib/Net/DRI/Data/ContactSet.pm \
	lib/Net/DRI/Protocol/Gandi/WS/Domain.pm \
	blib/lib/Net/DRI/Protocol/Gandi/WS/Domain.pm \
	lib/Net/DRI/Protocol/OpenSRS/XCP/Session.pm \
	blib/lib/Net/DRI/Protocol/OpenSRS/XCP/Session.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/ARNES/Domain.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/ARNES/Domain.pm \
	lib/Net/DRI/Data/RegistryObject.pm \
	blib/lib/Net/DRI/Data/RegistryObject.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Account.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Account.pm \
	lib/Net/DRI/DRD/NAME.pm \
	blib/lib/Net/DRI/DRD/NAME.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NeuLevel/UIN.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/NeuLevel/UIN.pm \
	lib/Net/DRI/Protocol/AFNIC/Email/Message.pm \
	blib/lib/Net/DRI/Protocol/AFNIC/Email/Message.pm \
	lib/Net/DRI/Protocol/OpenSRS/XCP/Message.pm \
	blib/lib/Net/DRI/Protocol/OpenSRS/XCP/Message.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/ASIA/IPR.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/ASIA/IPR.pm \
	lib/Net/DRI/Protocol/OVH/WS/Domain.pm \
	blib/lib/Net/DRI/Protocol/OVH/WS/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/IT.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/IT.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CIRA/Agreement.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/CIRA/Agreement.pm \
	lib/Net/DRI/Protocol/AdamsNames/WS/Message.pm \
	blib/lib/Net/DRI/Protocol/AdamsNames/WS/Message.pm \
	lib/Net/DRI/Transport/HTTP/SOAPWSDL.pm \
	blib/lib/Net/DRI/Transport/HTTP/SOAPWSDL.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AT/IOptions.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/AT/IOptions.pm \
	lib/Net/DRI/Transport/SOAP.pm \
	blib/lib/Net/DRI/Transport/SOAP.pm \
	lib/Net/DRI/Data/Contact/SWITCH.pm \
	blib/lib/Net/DRI/Data/Contact/SWITCH.pm \
	lib/Net/DRI/DRD/AU.pm \
	blib/lib/Net/DRI/DRD/AU.pm \
	lib/Net/DRI/Protocol/AFNIC/WS.pm \
	blib/lib/Net/DRI/Protocol/AFNIC/WS.pm \
	lib/Net/DRI/Protocol/Whois/Domain/EU.pm \
	blib/lib/Net/DRI/Protocol/Whois/Domain/EU.pm \
	lib/Net/DRI/Data/Contact/US.pm \
	blib/lib/Net/DRI/Data/Contact/US.pm \
	lib/Net/DRI/DRD/RFC.pm \
	blib/lib/Net/DRI/DRD/RFC.pm \
	lib/Net/DRI/DRD/BR.pm \
	blib/lib/Net/DRI/DRD/BR.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/DNSBE/Domain.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/DNSBE/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Core/Session.pm \
	blib/lib/Net/DRI/Protocol/EPP/Core/Session.pm \
	lib/Net/DRI/Data/Contact/Nominet.pm \
	blib/lib/Net/DRI/Data/Contact/Nominet.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/LU.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/LU.pm \
	lib/Net/DRI.pm \
	blib/lib/Net/DRI.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/GracePeriod.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/GracePeriod.pm \
	lib/Net/DRI/Data/Contact/AERO.pm \
	blib/lib/Net/DRI/Data/Contact/AERO.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/DNSBE.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/DNSBE.pm \
	lib/Net/DRI/Protocol/BookMyName/WS/Account.pm \
	blib/lib/Net/DRI/Protocol/BookMyName/WS/Account.pm \
	lib/Net/DRI/Protocol/RRP/Core/Domain.pm \
	blib/lib/Net/DRI/Protocol/RRP/Core/Domain.pm \
	lib/Net/DRI/DRD/IT.pm \
	blib/lib/Net/DRI/DRD/IT.pm \
	lib/Net/DRI/Protocol/Whois/Connection.pm \
	blib/lib/Net/DRI/Protocol/Whois/Connection.pm \
	lib/Net/DRI/Protocol/OVH/WS/Account.pm \
	blib/lib/Net/DRI/Protocol/OVH/WS/Account.pm \
	lib/Net/DRI/Protocol/Whois/Domain/AERO.pm \
	blib/lib/Net/DRI/Protocol/Whois/Domain/AERO.pm \
	lib/Net/DRI/Data/Contact/LU.pm \
	blib/lib/Net/DRI/Data/Contact/LU.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Message.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Message.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/PL/Message.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/PL/Message.pm \
	lib/Net/DRI/Protocol/DAS/AdamsNames/Domain.pm \
	blib/lib/Net/DRI/Protocol/DAS/AdamsNames/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/BR.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/BR.pm \
	lib/Net/DRI/Protocol/EPP/Message.pm \
	blib/lib/Net/DRI/Protocol/EPP/Message.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/IENUMAT.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/IENUMAT.pm \
	lib/Net/DRI/Protocol/IRIS/DCHK/Status.pm \
	blib/lib/Net/DRI/Protocol/IRIS/DCHK/Status.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Notifications.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Notifications.pm \
	lib/Net/DRI/DRD/CentralNic.pm \
	blib/lib/Net/DRI/DRD/CentralNic.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/COOP/Contact.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/COOP/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NO/Domain.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/NO/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AERO/Contact.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/AERO/Contact.pm \
	lib/Net/DRI/Protocol/AFNIC/WS/Message.pm \
	blib/lib/Net/DRI/Protocol/AFNIC/WS/Message.pm \
	lib/Net/DRI/Protocol/DAS/AdamsNames.pm \
	blib/lib/Net/DRI/Protocol/DAS/AdamsNames.pm \
	lib/Net/DRI/Data/Raw.pm \
	blib/lib/Net/DRI/Data/Raw.pm \
	lib/Net/DRI/DRD/NU.pm \
	blib/lib/Net/DRI/DRD/NU.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CentralNic/Release.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/CentralNic/Release.pm \
	lib/Net/DRI/Transport/Defer.pm \
	blib/lib/Net/DRI/Transport/Defer.pm \
	lib/Net/DRI/DRD/SIDN.pm \
	blib/lib/Net/DRI/DRD/SIDN.pm \
	lib/Net/DRI/Protocol/OpenSRS/XCP/Domain.pm \
	blib/lib/Net/DRI/Protocol/OpenSRS/XCP/Domain.pm \
	lib/Net/DRI/Protocol/RRI/Domain.pm \
	blib/lib/Net/DRI/Protocol/RRI/Domain.pm \
	lib/Net/DRI/Protocol/Whois/Domain/TRAVEL.pm \
	blib/lib/Net/DRI/Protocol/Whois/Domain/TRAVEL.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AFNIC.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/AFNIC.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/PL.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/PL.pm \
	lib/Net/DRI/DRD/ASIA.pm \
	blib/lib/Net/DRI/DRD/ASIA.pm \
	lib/Net/DRI/Protocol/BookMyName/WS/Domain.pm \
	blib/lib/Net/DRI/Protocol/BookMyName/WS/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/PRO.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/PRO.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SWITCH.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/SWITCH.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Afilias.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/Afilias.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CIRA.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/CIRA.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/IT/Domain.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/IT/Domain.pm \
	lib/Net/DRI/Protocol/AFNIC/Email.pm \
	blib/lib/Net/DRI/Protocol/AFNIC/Email.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CZ/Domain.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/CZ/Domain.pm \
	lib/Net/DRI/Protocol/DAS/AU/Connection.pm \
	blib/lib/Net/DRI/Protocol/DAS/AU/Connection.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NO/Host.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/NO/Host.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/EURid/Message.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/EURid/Message.pm \
	lib/Net/DRI/Protocol/OpenSRS/XCP.pm \
	blib/lib/Net/DRI/Protocol/OpenSRS/XCP.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AU.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/AU.pm \
	lib/Net/DRI/Exception.pm \
	blib/lib/Net/DRI/Exception.pm \
	lib/Net/DRI/DRD/COOP.pm \
	blib/lib/Net/DRI/DRD/COOP.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AFNIC/Status.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/AFNIC/Status.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/EURid/Contact.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/EURid/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/PL/Domain.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/PL/Domain.pm \
	lib/Net/DRI/BaseClass.pm \
	blib/lib/Net/DRI/BaseClass.pm \
	lib/Net/DRI/DRD/US.pm \
	blib/lib/Net/DRI/DRD/US.pm \
	lib/Net/DRI/Protocol/Whois/Domain/LU.pm \
	blib/lib/Net/DRI/Protocol/Whois/Domain/LU.pm \
	lib/Net/DRI/Protocol/Gandi/WS/Connection.pm \
	blib/lib/Net/DRI/Protocol/Gandi/WS/Connection.pm \
	lib/Net/DRI/Shell.pm \
	blib/lib/Net/DRI/Shell.pm \
	lib/Net/DRI/DRD/BookMyName.pm \
	blib/lib/Net/DRI/DRD/BookMyName.pm \
	lib/Net/DRI/Protocol/EPP/Core/Host.pm \
	blib/lib/Net/DRI/Protocol/EPP/Core/Host.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CAT/Domain.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/CAT/Domain.pm \
	lib/Net/DRI/Protocol/IRIS/Message.pm \
	blib/lib/Net/DRI/Protocol/IRIS/Message.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/PRO/Domain.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/PRO/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Nominet.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/Nominet.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/PRO/AV.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/PRO/AV.pm \
	lib/Net/DRI/DRD/PRO.pm \
	blib/lib/Net/DRI/DRD/PRO.pm \
	lib/Net/DRI/Protocol/Gandi/WS/Account.pm \
	blib/lib/Net/DRI/Protocol/Gandi/WS/Account.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/DNSBE/Message.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/DNSBE/Message.pm \
	lib/Net/DRI/Logging/Files.pm \
	blib/lib/Net/DRI/Logging/Files.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/VeriSign.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/VeriSign.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/PL/Contact.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/PL/Contact.pm \
	lib/Net/DRI/Protocol/BookMyName/WS/Message.pm \
	blib/lib/Net/DRI/Protocol/BookMyName/WS/Message.pm \
	lib/Net/DRI/DRD/SC.pm \
	blib/lib/Net/DRI/DRD/SC.pm \
	lib/Net/DRI/DRD/MOBI.pm \
	blib/lib/Net/DRI/DRD/MOBI.pm \
	lib/Net/DRI/Protocol/Whois/Domain/AT.pm \
	blib/lib/Net/DRI/Protocol/Whois/Domain/AT.pm \
	lib/Net/DRI/Protocol/ResultStatus.pm \
	blib/lib/Net/DRI/Protocol/ResultStatus.pm \
	lib/Net/DRI/Data/Contact/AFNIC.pm \
	blib/lib/Net/DRI/Data/Contact/AFNIC.pm \
	lib/Net/DRI/Data/Contact/DENIC.pm \
	blib/lib/Net/DRI/Data/Contact/DENIC.pm \
	lib/Net/DRI/Transport/HTTP/XMLRPCLite.pm \
	blib/lib/Net/DRI/Transport/HTTP/XMLRPCLite.pm \
	lib/Net/DRI/Protocol/DAS/SIDN.pm \
	blib/lib/Net/DRI/Protocol/DAS/SIDN.pm \
	lib/Net/DRI/Protocol/DAS/Connection.pm \
	blib/lib/Net/DRI/Protocol/DAS/Connection.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/JobsContact.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/JobsContact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/EURid/Registrar.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/EURid/Registrar.pm \
	lib/Net/DRI/Protocol/RRP/Connection.pm \
	blib/lib/Net/DRI/Protocol/RRP/Connection.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Host.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Host.pm \
	lib/Net/DRI/DRD/CIRA.pm \
	blib/lib/Net/DRI/DRD/CIRA.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CIRA/Notifications.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/CIRA/Notifications.pm \
	lib/Net/DRI/Transport/HTTP.pm \
	blib/lib/Net/DRI/Transport/HTTP.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CentralNic/TTL.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/CentralNic/TTL.pm \
	lib/Net/DRI/Logging/Null.pm \
	blib/lib/Net/DRI/Logging/Null.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NAME.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/NAME.pm \
	lib/Net/DRI/Protocol/OVH/WS/Connection.pm \
	blib/lib/Net/DRI/Protocol/OVH/WS/Connection.pm \
	lib/Net/DRI/Protocol/Whois/Domain/ORG.pm \
	blib/lib/Net/DRI/Protocol/Whois/Domain/ORG.pm \
	lib/Net/DRI/Protocol/OpenSRS/XCP/Connection.pm \
	blib/lib/Net/DRI/Protocol/OpenSRS/XCP/Connection.pm \
	lib/Net/DRI/Protocol/IRIS.pm \
	blib/lib/Net/DRI/Protocol/IRIS.pm \
	lib/Net/DRI/Protocol/DAS/AU.pm \
	blib/lib/Net/DRI/Protocol/DAS/AU.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Contact.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CZ/Contact.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/CZ/Contact.pm \
	lib/Net/DRI/Protocol/EPP.pm \
	blib/lib/Net/DRI/Protocol/EPP.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NO.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/NO.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AT.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/AT.pm \
	lib/Net/DRI/DRD/IRegistry.pm \
	blib/lib/Net/DRI/DRD/IRegistry.pm \
	lib/Net/DRI/Protocol/AdamsNames/WS/Domain.pm \
	blib/lib/Net/DRI/Protocol/AdamsNames/WS/Domain.pm \
	lib/Net/DRI/Protocol/BookMyName/WS.pm \
	blib/lib/Net/DRI/Protocol/BookMyName/WS.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SecDNS.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/SecDNS.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/US/Contact.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/US/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NAME/EmailFwd.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/NAME/EmailFwd.pm \
	lib/Net/DRI/Data/Contact/COOP.pm \
	blib/lib/Net/DRI/Data/Contact/COOP.pm \
	lib/Net/DRI/DRD/IENUMAT.pm \
	blib/lib/Net/DRI/DRD/IENUMAT.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Domain.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Domain.pm \
	lib/Net/DRI/Protocol/IRIS/XCP.pm \
	blib/lib/Net/DRI/Protocol/IRIS/XCP.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/WhoisInfo.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/WhoisInfo.pm \
	lib/Net/DRI/DRD/DENIC.pm \
	blib/lib/Net/DRI/DRD/DENIC.pm \
	lib/Net/DRI/Protocol/DAS/SIDN/Domain.pm \
	blib/lib/Net/DRI/Protocol/DAS/SIDN/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/PollLowBalance.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/PollLowBalance.pm \
	lib/Net/DRI/Protocol/EPP/Util.pm \
	blib/lib/Net/DRI/Protocol/EPP/Util.pm \
	lib/Net/DRI/Protocol/RRP/Core/Session.pm \
	blib/lib/Net/DRI/Protocol/RRP/Core/Session.pm \
	lib/Net/DRI/Protocol/IRIS/LWZ.pm \
	blib/lib/Net/DRI/Protocol/IRIS/LWZ.pm \
	lib/Net/DRI/Protocol/OpenSRS/XCP/Account.pm \
	blib/lib/Net/DRI/Protocol/OpenSRS/XCP/Account.pm \
	lib/Net/DRI/Protocol/Whois/Domain/NAME.pm \
	blib/lib/Net/DRI/Protocol/Whois/Domain/NAME.pm \
	lib/Net/DRI/Data/Contact/BR.pm \
	blib/lib/Net/DRI/Data/Contact/BR.pm \
	lib/Net/DRI/Protocol/EPP/Core/RegistryMessage.pm \
	blib/lib/Net/DRI/Protocol/EPP/Core/RegistryMessage.pm \
	lib/Net/DRI/DRD/AERO.pm \
	blib/lib/Net/DRI/DRD/AERO.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/EURid.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/EURid.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NO/Contact.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/NO/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CentralNic/WebForwarding.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/CentralNic/WebForwarding.pm \
	lib/Net/DRI/DRD/CoCCA.pm \
	blib/lib/Net/DRI/DRD/CoCCA.pm \
	lib/Net/DRI/Util.pm \
	blib/lib/Net/DRI/Util.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AFNIC/Contact.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/AFNIC/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/BIZ.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/BIZ.pm \
	lib/Net/DRI/Logging.pm \
	blib/lib/Net/DRI/Logging.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CAT/Contact.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/CAT/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/EURid/Notifications.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/EURid/Notifications.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AT/ATResult.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/AT/ATResult.pm \
	lib/Net/DRI/Data/Contact/OpenSRS.pm \
	blib/lib/Net/DRI/Data/Contact/OpenSRS.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/IDNLanguage.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/IDNLanguage.pm \
	lib/Net/DRI/Protocol/DAS/AU/Message.pm \
	blib/lib/Net/DRI/Protocol/DAS/AU/Message.pm \
	lib/Net/DRI/DRD/BZ.pm \
	blib/lib/Net/DRI/DRD/BZ.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/ASIA/CED.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/ASIA/CED.pm \
	lib/Net/DRI/Protocol/AdamsNames/WS/Connection.pm \
	blib/lib/Net/DRI/Protocol/AdamsNames/WS/Connection.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NeuLevel.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/NeuLevel.pm \
	lib/Net/DRI/DRD/MN.pm \
	blib/lib/Net/DRI/DRD/MN.pm \
	lib/Net/DRI/Protocol/Gandi/WS.pm \
	blib/lib/Net/DRI/Protocol/Gandi/WS.pm \
	lib/Net/DRI/Protocol/AFNIC/Email/Domain.pm \
	blib/lib/Net/DRI/Protocol/AFNIC/Email/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/IT/Notifications.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/IT/Notifications.pm \
	lib/Net/DRI/Data/Contact/PL.pm \
	blib/lib/Net/DRI/Data/Contact/PL.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NO/Result.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/NO/Result.pm \
	lib/Net/DRI/Protocol/OVH/WS/Message.pm \
	blib/lib/Net/DRI/Protocol/OVH/WS/Message.pm \
	lib/Net/DRI/DRD/ICANN.pm \
	blib/lib/Net/DRI/DRD/ICANN.pm \
	lib/Net/DRI/DRD/Gandi.pm \
	blib/lib/Net/DRI/DRD/Gandi.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/E164Validation.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/E164Validation.pm \
	lib/Net/DRI/Protocol/RRI/Message.pm \
	blib/lib/Net/DRI/Protocol/RRI/Message.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Afilias/Restore.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/Afilias/Restore.pm \
	lib/Net/DRI/Cache.pm \
	blib/lib/Net/DRI/Cache.pm \
	lib/Net/DRI/Protocol/Whois/Domain/COM.pm \
	blib/lib/Net/DRI/Protocol/Whois/Domain/COM.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/LU/Status.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/LU/Status.pm \
	lib/Net/DRI/Protocol/IRIS/Core.pm \
	blib/lib/Net/DRI/Protocol/IRIS/Core.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SecDNS11.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/SecDNS11.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SE/Message.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/SE/Message.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/COOP.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/COOP.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/IRegistry.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/IRegistry.pm \
	lib/Net/DRI/Logging/Stderr.pm \
	blib/lib/Net/DRI/Logging/Stderr.pm \
	lib/Net/DRI/Registry.pm \
	blib/lib/Net/DRI/Registry.pm \
	lib/Net/DRI/Protocol/AFNIC/WS/Domain.pm \
	blib/lib/Net/DRI/Protocol/AFNIC/WS/Domain.pm \
	lib/Net/DRI/Data/Contact/SE.pm \
	blib/lib/Net/DRI/Data/Contact/SE.pm \
	lib/Net/DRI/Data/Contact/JOBS.pm \
	blib/lib/Net/DRI/Data/Contact/JOBS.pm \
	lib/Net/DRI/Protocol/RRP.pm \
	blib/lib/Net/DRI/Protocol/RRP.pm \
	lib/Net/DRI/DRD/CZ.pm \
	blib/lib/Net/DRI/DRD/CZ.pm \
	lib/Net/DRI/Protocol/RRP/Core/Status.pm \
	blib/lib/Net/DRI/Protocol/RRP/Core/Status.pm \
	lib/Net/DRI/Protocol/DAS/Message.pm \
	blib/lib/Net/DRI/Protocol/DAS/Message.pm \
	lib/Net/DRI/DRD/PT.pm \
	blib/lib/Net/DRI/DRD/PT.pm \
	lib/Net/DRI/Transport/Dummy.pm \
	blib/lib/Net/DRI/Transport/Dummy.pm \
	lib/Net/DRI/Protocol/RRI/Session.pm \
	blib/lib/Net/DRI/Protocol/RRI/Session.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/FCCN/Contact.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/FCCN/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CIRA/Domain.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/CIRA/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CIRA/Contact.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/CIRA/Contact.pm \
	lib/Net/DRI/Data/Contact/AT.pm \
	blib/lib/Net/DRI/Data/Contact/AT.pm \
	lib/Net/DRI/Protocol/Whois/Domain/SE.pm \
	blib/lib/Net/DRI/Protocol/Whois/Domain/SE.pm \
	lib/Net/DRI/DRD/VNDS.pm \
	blib/lib/Net/DRI/DRD/VNDS.pm \
	lib/Net/DRI/Transport/SMTP.pm \
	blib/lib/Net/DRI/Transport/SMTP.pm \
	lib/Net/DRI/DRD/CAT.pm \
	blib/lib/Net/DRI/DRD/CAT.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/LU/Contact.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/LU/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Core/Contact.pm \
	blib/lib/Net/DRI/Protocol/EPP/Core/Contact.pm \
	lib/Net/DRI/Protocol/DAS/SIDN/Message.pm \
	blib/lib/Net/DRI/Protocol/DAS/SIDN/Message.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AU/Domain.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/AU/Domain.pm \
	lib/Net/DRI/DRD/WS.pm \
	blib/lib/Net/DRI/DRD/WS.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Contact.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Contact.pm \
	lib/Net/DRI/Data/Changes.pm \
	blib/lib/Net/DRI/Data/Changes.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/NameStore.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/NameStore.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/ARNES/Contact.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/ARNES/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/DNSBE/Contact.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/DNSBE/Contact.pm \
	lib/Net/DRI/Data/Contact/EURid.pm \
	blib/lib/Net/DRI/Data/Contact/EURid.pm \
	lib/Net/DRI/Protocol/DAS/AdamsNames/Connection.pm \
	blib/lib/Net/DRI/Protocol/DAS/AdamsNames/Connection.pm \
	lib/Net/DRI/DRD/Nominet.pm \
	blib/lib/Net/DRI/DRD/Nominet.pm \
	lib/Net/DRI/Data/StatusList.pm \
	blib/lib/Net/DRI/Data/StatusList.pm \
	lib/Net/DRI/DRD/GL.pm \
	blib/lib/Net/DRI/DRD/GL.pm \
	lib/Net/DRI/Data/Contact/SIDN.pm \
	blib/lib/Net/DRI/Data/Contact/SIDN.pm \
	lib/Net/DRI/Protocol/OpenSRS/XCP/Host.pm \
	blib/lib/Net/DRI/Protocol/OpenSRS/XCP/Host.pm \
	lib/Net/DRI/Protocol/Whois/Domain/MOBI.pm \
	blib/lib/Net/DRI/Protocol/Whois/Domain/MOBI.pm \
	lib/Net/DRI/Protocol/RRI/Connection.pm \
	blib/lib/Net/DRI/Protocol/RRI/Connection.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/EURid/Domain.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/EURid/Domain.pm \
	lib/Net/DRI/Data/Contact/CIRA.pm \
	blib/lib/Net/DRI/Data/Contact/CIRA.pm \
	lib/Net/DRI/Data/Contact/IT.pm \
	blib/lib/Net/DRI/Data/Contact/IT.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/FCCN.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/FCCN.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NSgroup.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/NSgroup.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NO/Message.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/NO/Message.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CAT/DefensiveRegistration.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/CAT/DefensiveRegistration.pm \
	lib/Net/DRI/DRD/IM.pm \
	blib/lib/Net/DRI/DRD/IM.pm \
	lib/Net/DRI/Protocol/Whois/Domain/INFO.pm \
	blib/lib/Net/DRI/Protocol/Whois/Domain/INFO.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SE.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/SE.pm \
	lib/Net/DRI/Protocol/Whois/Domain/BIZ.pm \
	blib/lib/Net/DRI/Protocol/Whois/Domain/BIZ.pm \
	lib/Net/DRI/DRD/SE.pm \
	blib/lib/Net/DRI/DRD/SE.pm \
	lib/Net/DRI/DRD/AdamsNames.pm \
	blib/lib/Net/DRI/DRD/AdamsNames.pm \
	lib/Net/DRI/Data/Contact/NO.pm \
	blib/lib/Net/DRI/Data/Contact/NO.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/EURid/Sunrise.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/EURid/Sunrise.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AT/Result.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/AT/Result.pm \
	lib/Net/DRI/Data/Contact/BE.pm \
	blib/lib/Net/DRI/Data/Contact/BE.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CZ.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/CZ.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/US.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/US.pm \
	lib/Net/DRI/Protocol/DAS.pm \
	blib/lib/Net/DRI/Protocol/DAS.pm \
	lib/Net/DRI/DRD.pm \
	blib/lib/Net/DRI/DRD.pm \
	lib/Net/DRI/Protocol.pm \
	blib/lib/Net/DRI/Protocol.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CentralNic.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/CentralNic.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Domain.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Domain.pm \
	lib/Net/DRI/DRD/AG.pm \
	blib/lib/Net/DRI/DRD/AG.pm \
	lib/Net/DRI/DRD/AT.pm \
	blib/lib/Net/DRI/DRD/AT.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AFNIC/Notifications.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/AFNIC/Notifications.pm \
	lib/Net/DRI/Protocol/Whois/Domain/PT.pm \
	blib/lib/Net/DRI/Protocol/Whois/Domain/PT.pm \
	lib/Net/DRI/Data/Contact/FCCN.pm \
	blib/lib/Net/DRI/Data/Contact/FCCN.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/PollRGP.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/PollRGP.pm \
	lib/Net/DRI/Protocol/AdamsNames/WS.pm \
	blib/lib/Net/DRI/Protocol/AdamsNames/WS.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CZ/NSSET.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/CZ/NSSET.pm \
	lib/Net/DRI/Protocol/DAS/Domain.pm \
	blib/lib/Net/DRI/Protocol/DAS/Domain.pm \
	lib/Net/DRI/Protocol/RRI.pm \
	blib/lib/Net/DRI/Protocol/RRI.pm \
	lib/Net/DRI/Logging/Syslog.pm \
	blib/lib/Net/DRI/Logging/Syslog.pm \
	lib/Net/DRI/Protocol/RRI/Contact.pm \
	blib/lib/Net/DRI/Protocol/RRI/Contact.pm \
	lib/Net/DRI/Data/Contact/ARNES.pm \
	blib/lib/Net/DRI/Data/Contact/ARNES.pm \
	lib/Net/DRI/Protocol/EPP/Connection.pm \
	blib/lib/Net/DRI/Protocol/EPP/Connection.pm \
	lib/Net/DRI/Protocol/Whois/Domain/WS.pm \
	blib/lib/Net/DRI/Protocol/Whois/Domain/WS.pm \
	lib/Net/DRI/Data/Contact.pm \
	blib/lib/Net/DRI/Data/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/HTTP.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/HTTP.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/E164.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/E164.pm \
	lib/Net/DRI/DRD/SWITCH.pm \
	blib/lib/Net/DRI/DRD/SWITCH.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NeuLevel/IDNLanguage.pm \
	blib/lib/Net/DRI/Protocol/EPP/Extensions/NeuLevel/IDNLanguage.pm \
	lib/Net/DRI/DRD/OpenSRS.pm \
	blib/lib/Net/DRI/DRD/OpenSRS.pm \
	lib/Net/DRI/DRD/HN.pm \
	blib/lib/Net/DRI/DRD/HN.pm \
	lib/Net/DRI/DRD/INFO.pm \
	blib/lib/Net/DRI/DRD/INFO.pm \
	lib/Net/DRI/Protocol/Whois/Domain/common.pm \
	blib/lib/Net/DRI/Protocol/Whois/Domain/common.pm \
	lib/Net/DRI/DRD/LC.pm \
	blib/lib/Net/DRI/DRD/LC.pm


# --- MakeMaker platform_constants section:
MM_Unix_VERSION = 6.55_02
PERL_MALLOC_DEF = -DPERL_EXTMALLOC_DEF -Dmalloc=Perl_malloc -Dfree=Perl_mfree -Drealloc=Perl_realloc -Dcalloc=Perl_calloc


# --- MakeMaker tool_autosplit section:
# Usage: $(AUTOSPLITFILE) FileToSplit AutoDirToSplitInto
AUTOSPLITFILE = $(ABSPERLRUN)  -e 'use AutoSplit;  autosplit($$ARGV[0], $$ARGV[1], 0, 1, 1)' --



# --- MakeMaker tool_xsubpp section:


# --- MakeMaker tools_other section:
SHELL = /bin/sh
CHMOD = chmod
CP = cp
MV = mv
NOOP = $(TRUE)
NOECHO = @
RM_F = rm -f
RM_RF = rm -rf
TEST_F = test -f
TOUCH = touch
UMASK_NULL = umask 0
DEV_NULL = > /dev/null 2>&1
MKPATH = $(ABSPERLRUN) -MExtUtils::Command -e 'mkpath' --
EQUALIZE_TIMESTAMP = $(ABSPERLRUN) -MExtUtils::Command -e 'eqtime' --
FALSE = false
TRUE = true
ECHO = echo
ECHO_N = echo -n
UNINST = 0
VERBINST = 0
MOD_INSTALL = $(ABSPERLRUN) -MExtUtils::Install -e 'install([ from_to => {@ARGV}, verbose => '\''$(VERBINST)'\'', uninstall_shadows => '\''$(UNINST)'\'', dir_mode => '\''$(PERM_DIR)'\'' ]);' --
DOC_INSTALL = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'perllocal_install' --
UNINSTALL = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'uninstall' --
WARN_IF_OLD_PACKLIST = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'warn_if_old_packlist' --
MACROSTART = 
MACROEND = 
USEMAKEFILE = -f
FIXIN = $(ABSPERLRUN) -MExtUtils::MY -e 'MY->fixin(shift)' --


# --- MakeMaker makemakerdflt section:
makemakerdflt : all
	$(NOECHO) $(NOOP)


# --- MakeMaker dist section:
TAR = tar
TARFLAGS = cvf
ZIP = zip
ZIPFLAGS = -r
COMPRESS = gzip -9f
SUFFIX = gz
SHAR = shar
PREOP = $(NOECHO) $(NOOP)
POSTOP = $(NOECHO) $(NOOP)
TO_UNIX = $(NOECHO) $(NOOP)
CI = ci -u
RCS_LABEL = rcs -Nv$(VERSION_SYM): -q
DIST_CP = best
DIST_DEFAULT = tardist
DISTNAME = Net-DRI
DISTVNAME = Net-DRI-0.96


# --- MakeMaker macro section:


# --- MakeMaker depend section:


# --- MakeMaker cflags section:


# --- MakeMaker const_loadlibs section:


# --- MakeMaker const_cccmd section:


# --- MakeMaker post_constants section:


# --- MakeMaker pasthru section:

PASTHRU = LIBPERL_A="$(LIBPERL_A)"\
	LINKTYPE="$(LINKTYPE)"\
	PREFIX="$(PREFIX)"


# --- MakeMaker special_targets section:
.SUFFIXES : .xs .c .C .cpp .i .s .cxx .cc $(OBJ_EXT)

.PHONY: all config static dynamic test linkext manifest blibdirs clean realclean disttest distdir



# --- MakeMaker c_o section:


# --- MakeMaker xs_c section:


# --- MakeMaker xs_o section:


# --- MakeMaker top_targets section:
all :: pure_all manifypods
	$(NOECHO) $(NOOP)


pure_all :: config pm_to_blib subdirs linkext
	$(NOECHO) $(NOOP)

subdirs :: $(MYEXTLIB)
	$(NOECHO) $(NOOP)

config :: $(FIRST_MAKEFILE) blibdirs
	$(NOECHO) $(NOOP)

help :
	perldoc ExtUtils::MakeMaker


# --- MakeMaker blibdirs section:
blibdirs : $(INST_LIBDIR)$(DFSEP).exists $(INST_ARCHLIB)$(DFSEP).exists $(INST_AUTODIR)$(DFSEP).exists $(INST_ARCHAUTODIR)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists $(INST_SCRIPT)$(DFSEP).exists $(INST_MAN1DIR)$(DFSEP).exists $(INST_MAN3DIR)$(DFSEP).exists
	$(NOECHO) $(NOOP)

# Backwards compat with 6.18 through 6.25
blibdirs.ts : blibdirs
	$(NOECHO) $(NOOP)

$(INST_LIBDIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_LIBDIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_LIBDIR)
	$(NOECHO) $(TOUCH) $(INST_LIBDIR)$(DFSEP).exists

$(INST_ARCHLIB)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_ARCHLIB)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_ARCHLIB)
	$(NOECHO) $(TOUCH) $(INST_ARCHLIB)$(DFSEP).exists

$(INST_AUTODIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_AUTODIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_AUTODIR)
	$(NOECHO) $(TOUCH) $(INST_AUTODIR)$(DFSEP).exists

$(INST_ARCHAUTODIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_ARCHAUTODIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_ARCHAUTODIR)
	$(NOECHO) $(TOUCH) $(INST_ARCHAUTODIR)$(DFSEP).exists

$(INST_BIN)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_BIN)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_BIN)
	$(NOECHO) $(TOUCH) $(INST_BIN)$(DFSEP).exists

$(INST_SCRIPT)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_SCRIPT)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_SCRIPT)
	$(NOECHO) $(TOUCH) $(INST_SCRIPT)$(DFSEP).exists

$(INST_MAN1DIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_MAN1DIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_MAN1DIR)
	$(NOECHO) $(TOUCH) $(INST_MAN1DIR)$(DFSEP).exists

$(INST_MAN3DIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_MAN3DIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_MAN3DIR)
	$(NOECHO) $(TOUCH) $(INST_MAN3DIR)$(DFSEP).exists



# --- MakeMaker linkext section:

linkext :: $(LINKTYPE)
	$(NOECHO) $(NOOP)


# --- MakeMaker dlsyms section:


# --- MakeMaker dynamic section:

dynamic :: $(FIRST_MAKEFILE) $(INST_DYNAMIC) $(INST_BOOT)
	$(NOECHO) $(NOOP)


# --- MakeMaker dynamic_bs section:

BOOTSTRAP =


# --- MakeMaker dynamic_lib section:


# --- MakeMaker static section:

## $(INST_PM) has been moved to the all: target.
## It remains here for awhile to allow for old usage: "make static"
static :: $(FIRST_MAKEFILE) $(INST_STATIC)
	$(NOECHO) $(NOOP)


# --- MakeMaker static_lib section:


# --- MakeMaker manifypods section:

POD2MAN_EXE = $(PERLRUN) "-MExtUtils::Command::MM" -e pod2man "--"
POD2MAN = $(POD2MAN_EXE)


manifypods : pure_all  \
	lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Host.pm \
	lib/Net/DRI/Protocol/RRI/RegistryMessage.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AFNIC/Domain.pm \
	lib/Net/DRI/Protocol/OVH/WS.pm \
	lib/Net/DRI/DRD/PL.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/Sync.pm \
	lib/Net/DRI/DRD/AFNIC.pm \
	lib/Net/DRI/Protocol/Gandi/WS/Message.pm \
	lib/Net/DRI/Transport/Socket.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/BR/Contact.pm \
	lib/Net/DRI/DRD/TRAVEL.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AERO/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/MOBI.pm \
	lib/Net/DRI/Protocol/DAS/AdamsNames/Message.pm \
	lib/Net/DRI/DRD/BIZ.pm \
	lib/Net/DRI/Protocol/RRP/Core/Host.pm \
	lib/Net/DRI/Transport.pm \
	lib/Net/DRI/Protocol/Whois/Domain/CAT.pm \
	lib/Net/DRI/DRD/ORG.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AT/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/E164Validation/RFC5076.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/IT/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Notifications.pm \
	lib/Net/DRI/Protocol/EPP/Core/Status.pm \
	lib/Net/DRI/DRD/ARNES.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/ASIA.pm \
	lib/Net/DRI/Protocol/Message.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AT/Message.pm \
	lib/Net/DRI/DRD/OVH.pm \
	lib/Net/DRI/DRD/LU.pm \
	lib/Net/DRI/Protocol/IRIS/DCHK/Domain.pm \
	lib/Net/DRI/Protocol/Whois/Domain/US.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CAT.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/MOBI/Domain.pm \
	lib/Net/DRI/Protocol/DAS/AU/Domain.pm \
	lib/Net/DRI/Protocol/RRP/Message.pm \
	lib/Net/DRI/Transport/HTTP/SOAPLite.pm \
	lib/Net/DRI/Protocol/DAS/SIDN/Connection.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SIDN.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/BR/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Afilias/IDNLanguage.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AERO.pm \
	lib/Net/DRI/DRD/EURid.pm \
	lib/Net/DRI/Protocol/Whois/Message.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/LU/Poll.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/FCCN/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/LU/Domain.pm \
	lib/Net/DRI/Data/Contact/ASIA.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AT/Domain.pm \
	lib/Net/DRI/Protocol/Whois.pm \
	lib/Net/DRI/DRD/VC.pm \
	lib/Net/DRI/Protocol/EPP/Core/Domain.pm \
	lib/Net/DRI/Data/Contact/CAT.pm \
	lib/Net/DRI/Data/Hosts.pm \
	lib/Net/DRI/DRD/BE.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/ARNES.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SE/Extensions.pm \
	lib/Net/DRI/DRD/NO.pm \
	lib/Net/DRI/DRD/ME.pm \
	lib/Net/DRI/Data/ContactSet.pm \
	lib/Net/DRI/Protocol/Gandi/WS/Domain.pm \
	lib/Net/DRI/Protocol/OpenSRS/XCP/Session.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/ARNES/Domain.pm \
	lib/Net/DRI/Data/RegistryObject.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Account.pm \
	lib/Net/DRI/DRD/NAME.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NeuLevel/UIN.pm \
	lib/Net/DRI/Protocol/AFNIC/Email/Message.pm \
	lib/Net/DRI/Protocol/OpenSRS/XCP/Message.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/ASIA/IPR.pm \
	lib/Net/DRI/Protocol/OVH/WS/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/IT.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CIRA/Agreement.pm \
	lib/Net/DRI/Protocol/AdamsNames/WS/Message.pm \
	lib/Net/DRI/Transport/HTTP/SOAPWSDL.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AT/IOptions.pm \
	lib/Net/DRI/Transport/SOAP.pm \
	lib/Net/DRI/Data/Contact/SWITCH.pm \
	lib/Net/DRI/DRD/AU.pm \
	lib/Net/DRI/Protocol/AFNIC/WS.pm \
	lib/Net/DRI/Protocol/Whois/Domain/EU.pm \
	lib/Net/DRI/Data/Contact/US.pm \
	lib/Net/DRI/DRD/RFC.pm \
	lib/Net/DRI/DRD/BR.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/DNSBE/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Core/Session.pm \
	lib/Net/DRI/Data/Contact/Nominet.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/LU.pm \
	lib/Net/DRI.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/GracePeriod.pm \
	lib/Net/DRI/Data/Contact/AERO.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/DNSBE.pm \
	lib/Net/DRI/Protocol/BookMyName/WS/Account.pm \
	lib/Net/DRI/Protocol/RRP/Core/Domain.pm \
	lib/Net/DRI/DRD/IT.pm \
	lib/Net/DRI/Protocol/Whois/Connection.pm \
	lib/Net/DRI/Protocol/OVH/WS/Account.pm \
	lib/Net/DRI/Protocol/Whois/Domain/AERO.pm \
	lib/Net/DRI/Data/Contact/LU.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Message.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/PL/Message.pm \
	lib/Net/DRI/Protocol/DAS/AdamsNames/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/BR.pm \
	lib/Net/DRI/Protocol/EPP/Message.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/IENUMAT.pm \
	lib/Net/DRI/Protocol/IRIS/DCHK/Status.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Notifications.pm \
	lib/Net/DRI/DRD/CentralNic.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/COOP/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NO/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AERO/Contact.pm \
	lib/Net/DRI/Protocol/AFNIC/WS/Message.pm \
	lib/Net/DRI/Protocol/DAS/AdamsNames.pm \
	lib/Net/DRI/Data/Raw.pm \
	lib/Net/DRI/DRD/NU.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CentralNic/Release.pm \
	lib/Net/DRI/Transport/Defer.pm \
	lib/Net/DRI/DRD/SIDN.pm \
	lib/Net/DRI/Protocol/OpenSRS/XCP/Domain.pm \
	lib/Net/DRI/Protocol/RRI/Domain.pm \
	lib/Net/DRI/Protocol/Whois/Domain/TRAVEL.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AFNIC.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/PL.pm \
	lib/Net/DRI/DRD/ASIA.pm \
	lib/Net/DRI/Protocol/BookMyName/WS/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/PRO.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SWITCH.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Afilias.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CIRA.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/IT/Domain.pm \
	lib/Net/DRI/Protocol/AFNIC/Email.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CZ/Domain.pm \
	lib/Net/DRI/Protocol/DAS/AU/Connection.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NO/Host.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/EURid/Message.pm \
	lib/Net/DRI/Protocol/OpenSRS/XCP.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AU.pm \
	lib/Net/DRI/Exception.pm \
	lib/Net/DRI/DRD/COOP.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AFNIC/Status.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/EURid/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/PL/Domain.pm \
	lib/Net/DRI/BaseClass.pm \
	lib/Net/DRI/DRD/US.pm \
	lib/Net/DRI/Protocol/Whois/Domain/LU.pm \
	lib/Net/DRI/Protocol/Gandi/WS/Connection.pm \
	lib/Net/DRI/Shell.pm \
	lib/Net/DRI/DRD/BookMyName.pm \
	lib/Net/DRI/Protocol/EPP/Core/Host.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CAT/Domain.pm \
	lib/Net/DRI/Protocol/IRIS/Message.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/PRO/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Nominet.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/PRO/AV.pm \
	lib/Net/DRI/DRD/PRO.pm \
	lib/Net/DRI/Protocol/Gandi/WS/Account.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/DNSBE/Message.pm \
	lib/Net/DRI/Logging/Files.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/VeriSign.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/PL/Contact.pm \
	lib/Net/DRI/Protocol/BookMyName/WS/Message.pm \
	lib/Net/DRI/DRD/SC.pm \
	lib/Net/DRI/DRD/MOBI.pm \
	lib/Net/DRI/Protocol/Whois/Domain/AT.pm \
	lib/Net/DRI/Protocol/ResultStatus.pm \
	lib/Net/DRI/Data/Contact/AFNIC.pm \
	lib/Net/DRI/Data/Contact/DENIC.pm \
	lib/Net/DRI/Transport/HTTP/XMLRPCLite.pm \
	lib/Net/DRI/Protocol/DAS/SIDN.pm \
	lib/Net/DRI/Protocol/DAS/Connection.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/JobsContact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/EURid/Registrar.pm \
	lib/Net/DRI/Protocol/RRP/Connection.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Host.pm \
	lib/Net/DRI/DRD/CIRA.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CIRA/Notifications.pm \
	lib/Net/DRI/Transport/HTTP.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CentralNic/TTL.pm \
	lib/Net/DRI/Logging/Null.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NAME.pm \
	lib/Net/DRI/Protocol/OVH/WS/Connection.pm \
	lib/Net/DRI/Protocol/Whois/Domain/ORG.pm \
	lib/Net/DRI/Protocol/OpenSRS/XCP/Connection.pm \
	lib/Net/DRI/Protocol/IRIS.pm \
	lib/Net/DRI/Protocol/DAS/AU.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CZ/Contact.pm \
	lib/Net/DRI/Protocol/EPP.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NO.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AT.pm \
	lib/Net/DRI/DRD/IRegistry.pm \
	lib/Net/DRI/Protocol/AdamsNames/WS/Domain.pm \
	lib/Net/DRI/Protocol/BookMyName/WS.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SecDNS.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/US/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NAME/EmailFwd.pm \
	lib/Net/DRI/Data/Contact/COOP.pm \
	lib/Net/DRI/DRD/IENUMAT.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Domain.pm \
	lib/Net/DRI/Protocol/IRIS/XCP.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/WhoisInfo.pm \
	lib/Net/DRI/DRD/DENIC.pm \
	lib/Net/DRI/Protocol/DAS/SIDN/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/PollLowBalance.pm \
	lib/Net/DRI/Protocol/EPP/Util.pm \
	lib/Net/DRI/Protocol/RRP/Core/Session.pm \
	lib/Net/DRI/Protocol/IRIS/LWZ.pm \
	lib/Net/DRI/Protocol/OpenSRS/XCP/Account.pm \
	lib/Net/DRI/Protocol/Whois/Domain/NAME.pm \
	lib/Net/DRI/Data/Contact/BR.pm \
	lib/Net/DRI/Protocol/EPP/Core/RegistryMessage.pm \
	lib/Net/DRI/DRD/AERO.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/EURid.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NO/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CentralNic/WebForwarding.pm \
	lib/Net/DRI/DRD/CoCCA.pm \
	lib/Net/DRI/Util.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AFNIC/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/BIZ.pm \
	lib/Net/DRI/Logging.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CAT/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/EURid/Notifications.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AT/ATResult.pm \
	lib/Net/DRI/Data/Contact/OpenSRS.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/IDNLanguage.pm \
	lib/Net/DRI/Protocol/DAS/AU/Message.pm \
	lib/Net/DRI/DRD/BZ.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/ASIA/CED.pm \
	lib/Net/DRI/Protocol/AdamsNames/WS/Connection.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NeuLevel.pm \
	lib/Net/DRI/DRD/MN.pm \
	lib/Net/DRI/Protocol/Gandi/WS.pm \
	lib/Net/DRI/Protocol/AFNIC/Email/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/IT/Notifications.pm \
	lib/Net/DRI/Data/Contact/PL.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NO/Result.pm \
	lib/Net/DRI/Protocol/OVH/WS/Message.pm \
	lib/Net/DRI/DRD/ICANN.pm \
	lib/Net/DRI/DRD/Gandi.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/E164Validation.pm \
	lib/Net/DRI/Protocol/RRI/Message.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Afilias/Restore.pm \
	lib/Net/DRI/Cache.pm \
	lib/Net/DRI/Protocol/Whois/Domain/COM.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/LU/Status.pm \
	lib/Net/DRI/Protocol/IRIS/Core.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SecDNS11.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SE/Message.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/COOP.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/IRegistry.pm \
	lib/Net/DRI/Logging/Stderr.pm \
	lib/Net/DRI/Registry.pm \
	lib/Net/DRI/Protocol/AFNIC/WS/Domain.pm \
	lib/Net/DRI/Data/Contact/SE.pm \
	lib/Net/DRI/Data/Contact/JOBS.pm \
	lib/Net/DRI/Protocol/RRP.pm \
	lib/Net/DRI/DRD/CZ.pm \
	lib/Net/DRI/Protocol/RRP/Core/Status.pm \
	lib/Net/DRI/Protocol/DAS/Message.pm \
	lib/Net/DRI/DRD/PT.pm \
	lib/Net/DRI/Transport/Dummy.pm \
	lib/Net/DRI/Protocol/RRI/Session.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/FCCN/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CIRA/Domain.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CIRA/Contact.pm \
	lib/Net/DRI/Data/Contact/AT.pm \
	lib/Net/DRI/Protocol/Whois/Domain/SE.pm \
	lib/Net/DRI/DRD/VNDS.pm \
	lib/Net/DRI/Transport/SMTP.pm \
	lib/Net/DRI/DRD/CAT.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/LU/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Core/Contact.pm \
	lib/Net/DRI/Protocol/DAS/SIDN/Message.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AU/Domain.pm \
	lib/Net/DRI/DRD/WS.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Contact.pm \
	lib/Net/DRI/Data/Changes.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/NameStore.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/ARNES/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/DNSBE/Contact.pm \
	lib/Net/DRI/Data/Contact/EURid.pm \
	lib/Net/DRI/Protocol/DAS/AdamsNames/Connection.pm \
	lib/Net/DRI/DRD/Nominet.pm \
	lib/Net/DRI/Data/StatusList.pm \
	lib/Net/DRI/DRD/GL.pm \
	lib/Net/DRI/Data/Contact/SIDN.pm \
	lib/Net/DRI/Protocol/OpenSRS/XCP/Host.pm \
	lib/Net/DRI/Protocol/Whois/Domain/MOBI.pm \
	lib/Net/DRI/Protocol/RRI/Connection.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/EURid/Domain.pm \
	lib/Net/DRI/Data/Contact/CIRA.pm \
	lib/Net/DRI/Data/Contact/IT.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/FCCN.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NSgroup.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NO/Message.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CAT/DefensiveRegistration.pm \
	lib/Net/DRI/DRD/IM.pm \
	lib/Net/DRI/Protocol/Whois/Domain/INFO.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/SE.pm \
	lib/Net/DRI/Protocol/Whois/Domain/BIZ.pm \
	lib/Net/DRI/DRD/SE.pm \
	lib/Net/DRI/DRD/AdamsNames.pm \
	lib/Net/DRI/Data/Contact/NO.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/EURid/Sunrise.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AT/Result.pm \
	lib/Net/DRI/Data/Contact/BE.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CZ.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/US.pm \
	lib/Net/DRI/Protocol/DAS.pm \
	lib/Net/DRI/DRD.pm \
	lib/Net/DRI/Protocol.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CentralNic.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Domain.pm \
	lib/Net/DRI/DRD/AG.pm \
	lib/Net/DRI/DRD/AT.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/AFNIC/Notifications.pm \
	lib/Net/DRI/Protocol/Whois/Domain/PT.pm \
	lib/Net/DRI/Data/Contact/FCCN.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/PollRGP.pm \
	lib/Net/DRI/Protocol/AdamsNames/WS.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/CZ/NSSET.pm \
	lib/Net/DRI/Protocol/DAS/Domain.pm \
	lib/Net/DRI/Protocol/RRI.pm \
	lib/Net/DRI/Logging/Syslog.pm \
	lib/Net/DRI/Protocol/RRI/Contact.pm \
	lib/Net/DRI/Data/Contact/ARNES.pm \
	lib/Net/DRI/Protocol/EPP/Connection.pm \
	lib/Net/DRI/Protocol/Whois/Domain/WS.pm \
	lib/Net/DRI/Data/Contact.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/HTTP.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/E164.pm \
	lib/Net/DRI/DRD/SWITCH.pm \
	lib/Net/DRI/Protocol/EPP/Extensions/NeuLevel/IDNLanguage.pm \
	lib/Net/DRI/DRD/OpenSRS.pm \
	lib/Net/DRI/DRD/HN.pm \
	lib/Net/DRI/DRD/INFO.pm \
	lib/Net/DRI/Protocol/Whois/Domain/common.pm \
	lib/Net/DRI/DRD/LC.pm
	$(NOECHO) $(POD2MAN) --section=$(MAN3EXT) --perm_rw=$(PERM_RW) \
	  lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Host.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::SIDN::Host.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/RRI/RegistryMessage.pm $(INST_MAN3DIR)/Net::DRI::Protocol::RRI::RegistryMessage.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/AFNIC/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::AFNIC::Domain.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/OVH/WS.pm $(INST_MAN3DIR)/Net::DRI::Protocol::OVH::WS.$(MAN3EXT) \
	  lib/Net/DRI/DRD/PL.pm $(INST_MAN3DIR)/Net::DRI::DRD::PL.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/Sync.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::VeriSign::Sync.$(MAN3EXT) \
	  lib/Net/DRI/DRD/AFNIC.pm $(INST_MAN3DIR)/Net::DRI::DRD::AFNIC.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/Gandi/WS/Message.pm $(INST_MAN3DIR)/Net::DRI::Protocol::Gandi::WS::Message.$(MAN3EXT) \
	  lib/Net/DRI/Transport/Socket.pm $(INST_MAN3DIR)/Net::DRI::Transport::Socket.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/BR/Contact.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::BR::Contact.$(MAN3EXT) \
	  lib/Net/DRI/DRD/TRAVEL.pm $(INST_MAN3DIR)/Net::DRI::DRD::TRAVEL.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/AERO/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::AERO::Domain.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/MOBI.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::MOBI.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/DAS/AdamsNames/Message.pm $(INST_MAN3DIR)/Net::DRI::Protocol::DAS::AdamsNames::Message.$(MAN3EXT) \
	  lib/Net/DRI/DRD/BIZ.pm $(INST_MAN3DIR)/Net::DRI::DRD::BIZ.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/RRP/Core/Host.pm $(INST_MAN3DIR)/Net::DRI::Protocol::RRP::Core::Host.$(MAN3EXT) \
	  lib/Net/DRI/Transport.pm $(INST_MAN3DIR)/Net::DRI::Transport.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/Whois/Domain/CAT.pm $(INST_MAN3DIR)/Net::DRI::Protocol::Whois::Domain::CAT.$(MAN3EXT) \
	  lib/Net/DRI/DRD/ORG.pm $(INST_MAN3DIR)/Net::DRI::DRD::ORG.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/AT/Contact.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::AT::Contact.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/E164Validation/RFC5076.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::E164Validation::RFC5076.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/IT/Contact.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::IT::Contact.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Notifications.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::Nominet::Notifications.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Core/Status.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Core::Status.$(MAN3EXT) \
	  lib/Net/DRI/DRD/ARNES.pm $(INST_MAN3DIR)/Net::DRI::DRD::ARNES.$(MAN3EXT) 
	$(NOECHO) $(POD2MAN) --section=$(MAN3EXT) --perm_rw=$(PERM_RW) \
	  lib/Net/DRI/Protocol/EPP/Extensions/ASIA.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::ASIA.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/Message.pm $(INST_MAN3DIR)/Net::DRI::Protocol::Message.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/AT/Message.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::AT::Message.$(MAN3EXT) \
	  lib/Net/DRI/DRD/OVH.pm $(INST_MAN3DIR)/Net::DRI::DRD::OVH.$(MAN3EXT) \
	  lib/Net/DRI/DRD/LU.pm $(INST_MAN3DIR)/Net::DRI::DRD::LU.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/IRIS/DCHK/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::IRIS::DCHK::Domain.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/Whois/Domain/US.pm $(INST_MAN3DIR)/Net::DRI::Protocol::Whois::Domain::US.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/CAT.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::CAT.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/MOBI/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::MOBI::Domain.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/DAS/AU/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::DAS::AU::Domain.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/RRP/Message.pm $(INST_MAN3DIR)/Net::DRI::Protocol::RRP::Message.$(MAN3EXT) \
	  lib/Net/DRI/Transport/HTTP/SOAPLite.pm $(INST_MAN3DIR)/Net::DRI::Transport::HTTP::SOAPLite.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/DAS/SIDN/Connection.pm $(INST_MAN3DIR)/Net::DRI::Protocol::DAS::SIDN::Connection.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/SIDN.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::SIDN.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/BR/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::BR::Domain.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/Afilias/IDNLanguage.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::Afilias::IDNLanguage.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/AERO.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::AERO.$(MAN3EXT) \
	  lib/Net/DRI/DRD/EURid.pm $(INST_MAN3DIR)/Net::DRI::DRD::EURid.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/Whois/Message.pm $(INST_MAN3DIR)/Net::DRI::Protocol::Whois::Message.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/LU/Poll.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::LU::Poll.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/FCCN/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::FCCN::Domain.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/LU/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::LU::Domain.$(MAN3EXT) \
	  lib/Net/DRI/Data/Contact/ASIA.pm $(INST_MAN3DIR)/Net::DRI::Data::Contact::ASIA.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/AT/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::AT::Domain.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/Whois.pm $(INST_MAN3DIR)/Net::DRI::Protocol::Whois.$(MAN3EXT) 
	$(NOECHO) $(POD2MAN) --section=$(MAN3EXT) --perm_rw=$(PERM_RW) \
	  lib/Net/DRI/DRD/VC.pm $(INST_MAN3DIR)/Net::DRI::DRD::VC.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Core/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Core::Domain.$(MAN3EXT) \
	  lib/Net/DRI/Data/Contact/CAT.pm $(INST_MAN3DIR)/Net::DRI::Data::Contact::CAT.$(MAN3EXT) \
	  lib/Net/DRI/Data/Hosts.pm $(INST_MAN3DIR)/Net::DRI::Data::Hosts.$(MAN3EXT) \
	  lib/Net/DRI/DRD/BE.pm $(INST_MAN3DIR)/Net::DRI::DRD::BE.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/ARNES.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::ARNES.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/SE/Extensions.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::SE::Extensions.$(MAN3EXT) \
	  lib/Net/DRI/DRD/NO.pm $(INST_MAN3DIR)/Net::DRI::DRD::NO.$(MAN3EXT) \
	  lib/Net/DRI/DRD/ME.pm $(INST_MAN3DIR)/Net::DRI::DRD::ME.$(MAN3EXT) \
	  lib/Net/DRI/Data/ContactSet.pm $(INST_MAN3DIR)/Net::DRI::Data::ContactSet.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/Gandi/WS/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::Gandi::WS::Domain.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/OpenSRS/XCP/Session.pm $(INST_MAN3DIR)/Net::DRI::Protocol::OpenSRS::XCP::Session.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/ARNES/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::ARNES::Domain.$(MAN3EXT) \
	  lib/Net/DRI/Data/RegistryObject.pm $(INST_MAN3DIR)/Net::DRI::Data::RegistryObject.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Account.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::Nominet::Account.$(MAN3EXT) \
	  lib/Net/DRI/DRD/NAME.pm $(INST_MAN3DIR)/Net::DRI::DRD::NAME.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/NeuLevel/UIN.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::NeuLevel::UIN.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/AFNIC/Email/Message.pm $(INST_MAN3DIR)/Net::DRI::Protocol::AFNIC::Email::Message.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/OpenSRS/XCP/Message.pm $(INST_MAN3DIR)/Net::DRI::Protocol::OpenSRS::XCP::Message.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/ASIA/IPR.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::ASIA::IPR.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/OVH/WS/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::OVH::WS::Domain.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/IT.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::IT.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/CIRA/Agreement.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::CIRA::Agreement.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/AdamsNames/WS/Message.pm $(INST_MAN3DIR)/Net::DRI::Protocol::AdamsNames::WS::Message.$(MAN3EXT) \
	  lib/Net/DRI/Transport/HTTP/SOAPWSDL.pm $(INST_MAN3DIR)/Net::DRI::Transport::HTTP::SOAPWSDL.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/AT/IOptions.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::AT::IOptions.$(MAN3EXT) 
	$(NOECHO) $(POD2MAN) --section=$(MAN3EXT) --perm_rw=$(PERM_RW) \
	  lib/Net/DRI/Transport/SOAP.pm $(INST_MAN3DIR)/Net::DRI::Transport::SOAP.$(MAN3EXT) \
	  lib/Net/DRI/Data/Contact/SWITCH.pm $(INST_MAN3DIR)/Net::DRI::Data::Contact::SWITCH.$(MAN3EXT) \
	  lib/Net/DRI/DRD/AU.pm $(INST_MAN3DIR)/Net::DRI::DRD::AU.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/AFNIC/WS.pm $(INST_MAN3DIR)/Net::DRI::Protocol::AFNIC::WS.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/Whois/Domain/EU.pm $(INST_MAN3DIR)/Net::DRI::Protocol::Whois::Domain::EU.$(MAN3EXT) \
	  lib/Net/DRI/Data/Contact/US.pm $(INST_MAN3DIR)/Net::DRI::Data::Contact::US.$(MAN3EXT) \
	  lib/Net/DRI/DRD/RFC.pm $(INST_MAN3DIR)/Net::DRI::DRD::RFC.$(MAN3EXT) \
	  lib/Net/DRI/DRD/BR.pm $(INST_MAN3DIR)/Net::DRI::DRD::BR.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/DNSBE/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::DNSBE::Domain.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Core/Session.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Core::Session.$(MAN3EXT) \
	  lib/Net/DRI/Data/Contact/Nominet.pm $(INST_MAN3DIR)/Net::DRI::Data::Contact::Nominet.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/LU.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::LU.$(MAN3EXT) \
	  lib/Net/DRI.pm $(INST_MAN3DIR)/Net::DRI.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/GracePeriod.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::GracePeriod.$(MAN3EXT) \
	  lib/Net/DRI/Data/Contact/AERO.pm $(INST_MAN3DIR)/Net::DRI::Data::Contact::AERO.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/DNSBE.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::DNSBE.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/BookMyName/WS/Account.pm $(INST_MAN3DIR)/Net::DRI::Protocol::BookMyName::WS::Account.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/RRP/Core/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::RRP::Core::Domain.$(MAN3EXT) \
	  lib/Net/DRI/DRD/IT.pm $(INST_MAN3DIR)/Net::DRI::DRD::IT.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/Whois/Connection.pm $(INST_MAN3DIR)/Net::DRI::Protocol::Whois::Connection.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/OVH/WS/Account.pm $(INST_MAN3DIR)/Net::DRI::Protocol::OVH::WS::Account.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/Whois/Domain/AERO.pm $(INST_MAN3DIR)/Net::DRI::Protocol::Whois::Domain::AERO.$(MAN3EXT) \
	  lib/Net/DRI/Data/Contact/LU.pm $(INST_MAN3DIR)/Net::DRI::Data::Contact::LU.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Message.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::SIDN::Message.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/PL/Message.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::PL::Message.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/DAS/AdamsNames/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::DAS::AdamsNames::Domain.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/BR.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::BR.$(MAN3EXT) 
	$(NOECHO) $(POD2MAN) --section=$(MAN3EXT) --perm_rw=$(PERM_RW) \
	  lib/Net/DRI/Protocol/EPP/Message.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Message.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/IENUMAT.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::IENUMAT.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/IRIS/DCHK/Status.pm $(INST_MAN3DIR)/Net::DRI::Protocol::IRIS::DCHK::Status.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Notifications.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::SIDN::Notifications.$(MAN3EXT) \
	  lib/Net/DRI/DRD/CentralNic.pm $(INST_MAN3DIR)/Net::DRI::DRD::CentralNic.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/COOP/Contact.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::COOP::Contact.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/NO/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::NO::Domain.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/AERO/Contact.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::AERO::Contact.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/AFNIC/WS/Message.pm $(INST_MAN3DIR)/Net::DRI::Protocol::AFNIC::WS::Message.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/DAS/AdamsNames.pm $(INST_MAN3DIR)/Net::DRI::Protocol::DAS::AdamsNames.$(MAN3EXT) \
	  lib/Net/DRI/Data/Raw.pm $(INST_MAN3DIR)/Net::DRI::Data::Raw.$(MAN3EXT) \
	  lib/Net/DRI/DRD/NU.pm $(INST_MAN3DIR)/Net::DRI::DRD::NU.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/CentralNic/Release.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::CentralNic::Release.$(MAN3EXT) \
	  lib/Net/DRI/Transport/Defer.pm $(INST_MAN3DIR)/Net::DRI::Transport::Defer.$(MAN3EXT) \
	  lib/Net/DRI/DRD/SIDN.pm $(INST_MAN3DIR)/Net::DRI::DRD::SIDN.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/OpenSRS/XCP/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::OpenSRS::XCP::Domain.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/RRI/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::RRI::Domain.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/Whois/Domain/TRAVEL.pm $(INST_MAN3DIR)/Net::DRI::Protocol::Whois::Domain::TRAVEL.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/AFNIC.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::AFNIC.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/PL.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::PL.$(MAN3EXT) \
	  lib/Net/DRI/DRD/ASIA.pm $(INST_MAN3DIR)/Net::DRI::DRD::ASIA.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/BookMyName/WS/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::BookMyName::WS::Domain.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/PRO.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::PRO.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/SWITCH.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::SWITCH.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/Afilias.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::Afilias.$(MAN3EXT) 
	$(NOECHO) $(POD2MAN) --section=$(MAN3EXT) --perm_rw=$(PERM_RW) \
	  lib/Net/DRI/Protocol/EPP/Extensions/CIRA.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::CIRA.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/IT/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::IT::Domain.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/AFNIC/Email.pm $(INST_MAN3DIR)/Net::DRI::Protocol::AFNIC::Email.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/CZ/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::CZ::Domain.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/DAS/AU/Connection.pm $(INST_MAN3DIR)/Net::DRI::Protocol::DAS::AU::Connection.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/NO/Host.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::NO::Host.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/EURid/Message.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::EURid::Message.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/OpenSRS/XCP.pm $(INST_MAN3DIR)/Net::DRI::Protocol::OpenSRS::XCP.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/AU.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::AU.$(MAN3EXT) \
	  lib/Net/DRI/Exception.pm $(INST_MAN3DIR)/Net::DRI::Exception.$(MAN3EXT) \
	  lib/Net/DRI/DRD/COOP.pm $(INST_MAN3DIR)/Net::DRI::DRD::COOP.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/AFNIC/Status.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::AFNIC::Status.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/EURid/Contact.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::EURid::Contact.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/PL/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::PL::Domain.$(MAN3EXT) \
	  lib/Net/DRI/BaseClass.pm $(INST_MAN3DIR)/Net::DRI::BaseClass.$(MAN3EXT) \
	  lib/Net/DRI/DRD/US.pm $(INST_MAN3DIR)/Net::DRI::DRD::US.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/Whois/Domain/LU.pm $(INST_MAN3DIR)/Net::DRI::Protocol::Whois::Domain::LU.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/Gandi/WS/Connection.pm $(INST_MAN3DIR)/Net::DRI::Protocol::Gandi::WS::Connection.$(MAN3EXT) \
	  lib/Net/DRI/Shell.pm $(INST_MAN3DIR)/Net::DRI::Shell.$(MAN3EXT) \
	  lib/Net/DRI/DRD/BookMyName.pm $(INST_MAN3DIR)/Net::DRI::DRD::BookMyName.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Core/Host.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Core::Host.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/CAT/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::CAT::Domain.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/IRIS/Message.pm $(INST_MAN3DIR)/Net::DRI::Protocol::IRIS::Message.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/PRO/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::PRO::Domain.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/Nominet.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::Nominet.$(MAN3EXT) 
	$(NOECHO) $(POD2MAN) --section=$(MAN3EXT) --perm_rw=$(PERM_RW) \
	  lib/Net/DRI/Protocol/EPP/Extensions/PRO/AV.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::PRO::AV.$(MAN3EXT) \
	  lib/Net/DRI/DRD/PRO.pm $(INST_MAN3DIR)/Net::DRI::DRD::PRO.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/Gandi/WS/Account.pm $(INST_MAN3DIR)/Net::DRI::Protocol::Gandi::WS::Account.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/DNSBE/Message.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::DNSBE::Message.$(MAN3EXT) \
	  lib/Net/DRI/Logging/Files.pm $(INST_MAN3DIR)/Net::DRI::Logging::Files.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/VeriSign.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::VeriSign.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/PL/Contact.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::PL::Contact.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/BookMyName/WS/Message.pm $(INST_MAN3DIR)/Net::DRI::Protocol::BookMyName::WS::Message.$(MAN3EXT) \
	  lib/Net/DRI/DRD/SC.pm $(INST_MAN3DIR)/Net::DRI::DRD::SC.$(MAN3EXT) \
	  lib/Net/DRI/DRD/MOBI.pm $(INST_MAN3DIR)/Net::DRI::DRD::MOBI.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/Whois/Domain/AT.pm $(INST_MAN3DIR)/Net::DRI::Protocol::Whois::Domain::AT.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/ResultStatus.pm $(INST_MAN3DIR)/Net::DRI::Protocol::ResultStatus.$(MAN3EXT) \
	  lib/Net/DRI/Data/Contact/AFNIC.pm $(INST_MAN3DIR)/Net::DRI::Data::Contact::AFNIC.$(MAN3EXT) \
	  lib/Net/DRI/Data/Contact/DENIC.pm $(INST_MAN3DIR)/Net::DRI::Data::Contact::DENIC.$(MAN3EXT) \
	  lib/Net/DRI/Transport/HTTP/XMLRPCLite.pm $(INST_MAN3DIR)/Net::DRI::Transport::HTTP::XMLRPCLite.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/DAS/SIDN.pm $(INST_MAN3DIR)/Net::DRI::Protocol::DAS::SIDN.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/DAS/Connection.pm $(INST_MAN3DIR)/Net::DRI::Protocol::DAS::Connection.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/JobsContact.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::VeriSign::JobsContact.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/EURid/Registrar.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::EURid::Registrar.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/RRP/Connection.pm $(INST_MAN3DIR)/Net::DRI::Protocol::RRP::Connection.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Host.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::Nominet::Host.$(MAN3EXT) \
	  lib/Net/DRI/DRD/CIRA.pm $(INST_MAN3DIR)/Net::DRI::DRD::CIRA.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/CIRA/Notifications.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::CIRA::Notifications.$(MAN3EXT) \
	  lib/Net/DRI/Transport/HTTP.pm $(INST_MAN3DIR)/Net::DRI::Transport::HTTP.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/CentralNic/TTL.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::CentralNic::TTL.$(MAN3EXT) 
	$(NOECHO) $(POD2MAN) --section=$(MAN3EXT) --perm_rw=$(PERM_RW) \
	  lib/Net/DRI/Logging/Null.pm $(INST_MAN3DIR)/Net::DRI::Logging::Null.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/NAME.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::NAME.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/OVH/WS/Connection.pm $(INST_MAN3DIR)/Net::DRI::Protocol::OVH::WS::Connection.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/Whois/Domain/ORG.pm $(INST_MAN3DIR)/Net::DRI::Protocol::Whois::Domain::ORG.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/OpenSRS/XCP/Connection.pm $(INST_MAN3DIR)/Net::DRI::Protocol::OpenSRS::XCP::Connection.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/IRIS.pm $(INST_MAN3DIR)/Net::DRI::Protocol::IRIS.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/DAS/AU.pm $(INST_MAN3DIR)/Net::DRI::Protocol::DAS::AU.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Contact.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::Nominet::Contact.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/CZ/Contact.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::CZ::Contact.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/NO.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::NO.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/AT.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::AT.$(MAN3EXT) \
	  lib/Net/DRI/DRD/IRegistry.pm $(INST_MAN3DIR)/Net::DRI::DRD::IRegistry.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/AdamsNames/WS/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::AdamsNames::WS::Domain.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/BookMyName/WS.pm $(INST_MAN3DIR)/Net::DRI::Protocol::BookMyName::WS.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/SecDNS.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::SecDNS.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/US/Contact.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::US::Contact.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/NAME/EmailFwd.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::NAME::EmailFwd.$(MAN3EXT) \
	  lib/Net/DRI/Data/Contact/COOP.pm $(INST_MAN3DIR)/Net::DRI::Data::Contact::COOP.$(MAN3EXT) \
	  lib/Net/DRI/DRD/IENUMAT.pm $(INST_MAN3DIR)/Net::DRI::DRD::IENUMAT.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::SIDN::Domain.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/IRIS/XCP.pm $(INST_MAN3DIR)/Net::DRI::Protocol::IRIS::XCP.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/WhoisInfo.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::VeriSign::WhoisInfo.$(MAN3EXT) \
	  lib/Net/DRI/DRD/DENIC.pm $(INST_MAN3DIR)/Net::DRI::DRD::DENIC.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/DAS/SIDN/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::DAS::SIDN::Domain.$(MAN3EXT) 
	$(NOECHO) $(POD2MAN) --section=$(MAN3EXT) --perm_rw=$(PERM_RW) \
	  lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/PollLowBalance.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::VeriSign::PollLowBalance.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Util.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Util.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/RRP/Core/Session.pm $(INST_MAN3DIR)/Net::DRI::Protocol::RRP::Core::Session.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/IRIS/LWZ.pm $(INST_MAN3DIR)/Net::DRI::Protocol::IRIS::LWZ.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/OpenSRS/XCP/Account.pm $(INST_MAN3DIR)/Net::DRI::Protocol::OpenSRS::XCP::Account.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/Whois/Domain/NAME.pm $(INST_MAN3DIR)/Net::DRI::Protocol::Whois::Domain::NAME.$(MAN3EXT) \
	  lib/Net/DRI/Data/Contact/BR.pm $(INST_MAN3DIR)/Net::DRI::Data::Contact::BR.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Core/RegistryMessage.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Core::RegistryMessage.$(MAN3EXT) \
	  lib/Net/DRI/DRD/AERO.pm $(INST_MAN3DIR)/Net::DRI::DRD::AERO.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/EURid.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::EURid.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/NO/Contact.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::NO::Contact.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/CentralNic/WebForwarding.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::CentralNic::WebForwarding.$(MAN3EXT) \
	  lib/Net/DRI/DRD/CoCCA.pm $(INST_MAN3DIR)/Net::DRI::DRD::CoCCA.$(MAN3EXT) \
	  lib/Net/DRI/Util.pm $(INST_MAN3DIR)/Net::DRI::Util.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/AFNIC/Contact.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::AFNIC::Contact.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/BIZ.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::BIZ.$(MAN3EXT) \
	  lib/Net/DRI/Logging.pm $(INST_MAN3DIR)/Net::DRI::Logging.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/CAT/Contact.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::CAT::Contact.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/EURid/Notifications.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::EURid::Notifications.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/AT/ATResult.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::AT::ATResult.$(MAN3EXT) \
	  lib/Net/DRI/Data/Contact/OpenSRS.pm $(INST_MAN3DIR)/Net::DRI::Data::Contact::OpenSRS.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/IDNLanguage.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::VeriSign::IDNLanguage.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/DAS/AU/Message.pm $(INST_MAN3DIR)/Net::DRI::Protocol::DAS::AU::Message.$(MAN3EXT) \
	  lib/Net/DRI/DRD/BZ.pm $(INST_MAN3DIR)/Net::DRI::DRD::BZ.$(MAN3EXT) 
	$(NOECHO) $(POD2MAN) --section=$(MAN3EXT) --perm_rw=$(PERM_RW) \
	  lib/Net/DRI/Protocol/EPP/Extensions/ASIA/CED.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::ASIA::CED.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/AdamsNames/WS/Connection.pm $(INST_MAN3DIR)/Net::DRI::Protocol::AdamsNames::WS::Connection.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/NeuLevel.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::NeuLevel.$(MAN3EXT) \
	  lib/Net/DRI/DRD/MN.pm $(INST_MAN3DIR)/Net::DRI::DRD::MN.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/Gandi/WS.pm $(INST_MAN3DIR)/Net::DRI::Protocol::Gandi::WS.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/AFNIC/Email/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::AFNIC::Email::Domain.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/IT/Notifications.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::IT::Notifications.$(MAN3EXT) \
	  lib/Net/DRI/Data/Contact/PL.pm $(INST_MAN3DIR)/Net::DRI::Data::Contact::PL.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/NO/Result.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::NO::Result.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/OVH/WS/Message.pm $(INST_MAN3DIR)/Net::DRI::Protocol::OVH::WS::Message.$(MAN3EXT) \
	  lib/Net/DRI/DRD/ICANN.pm $(INST_MAN3DIR)/Net::DRI::DRD::ICANN.$(MAN3EXT) \
	  lib/Net/DRI/DRD/Gandi.pm $(INST_MAN3DIR)/Net::DRI::DRD::Gandi.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/E164Validation.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::E164Validation.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/RRI/Message.pm $(INST_MAN3DIR)/Net::DRI::Protocol::RRI::Message.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/Afilias/Restore.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::Afilias::Restore.$(MAN3EXT) \
	  lib/Net/DRI/Cache.pm $(INST_MAN3DIR)/Net::DRI::Cache.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/Whois/Domain/COM.pm $(INST_MAN3DIR)/Net::DRI::Protocol::Whois::Domain::COM.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/LU/Status.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::LU::Status.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/IRIS/Core.pm $(INST_MAN3DIR)/Net::DRI::Protocol::IRIS::Core.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/SecDNS11.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::SecDNS11.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/SE/Message.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::SE::Message.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/COOP.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::COOP.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/IRegistry.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::IRegistry.$(MAN3EXT) \
	  lib/Net/DRI/Logging/Stderr.pm $(INST_MAN3DIR)/Net::DRI::Logging::Stderr.$(MAN3EXT) \
	  lib/Net/DRI/Registry.pm $(INST_MAN3DIR)/Net::DRI::Registry.$(MAN3EXT) 
	$(NOECHO) $(POD2MAN) --section=$(MAN3EXT) --perm_rw=$(PERM_RW) \
	  lib/Net/DRI/Protocol/AFNIC/WS/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::AFNIC::WS::Domain.$(MAN3EXT) \
	  lib/Net/DRI/Data/Contact/SE.pm $(INST_MAN3DIR)/Net::DRI::Data::Contact::SE.$(MAN3EXT) \
	  lib/Net/DRI/Data/Contact/JOBS.pm $(INST_MAN3DIR)/Net::DRI::Data::Contact::JOBS.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/RRP.pm $(INST_MAN3DIR)/Net::DRI::Protocol::RRP.$(MAN3EXT) \
	  lib/Net/DRI/DRD/CZ.pm $(INST_MAN3DIR)/Net::DRI::DRD::CZ.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/RRP/Core/Status.pm $(INST_MAN3DIR)/Net::DRI::Protocol::RRP::Core::Status.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/DAS/Message.pm $(INST_MAN3DIR)/Net::DRI::Protocol::DAS::Message.$(MAN3EXT) \
	  lib/Net/DRI/DRD/PT.pm $(INST_MAN3DIR)/Net::DRI::DRD::PT.$(MAN3EXT) \
	  lib/Net/DRI/Transport/Dummy.pm $(INST_MAN3DIR)/Net::DRI::Transport::Dummy.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/RRI/Session.pm $(INST_MAN3DIR)/Net::DRI::Protocol::RRI::Session.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/FCCN/Contact.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::FCCN::Contact.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/CIRA/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::CIRA::Domain.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/CIRA/Contact.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::CIRA::Contact.$(MAN3EXT) \
	  lib/Net/DRI/Data/Contact/AT.pm $(INST_MAN3DIR)/Net::DRI::Data::Contact::AT.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/Whois/Domain/SE.pm $(INST_MAN3DIR)/Net::DRI::Protocol::Whois::Domain::SE.$(MAN3EXT) \
	  lib/Net/DRI/DRD/VNDS.pm $(INST_MAN3DIR)/Net::DRI::DRD::VNDS.$(MAN3EXT) \
	  lib/Net/DRI/Transport/SMTP.pm $(INST_MAN3DIR)/Net::DRI::Transport::SMTP.$(MAN3EXT) \
	  lib/Net/DRI/DRD/CAT.pm $(INST_MAN3DIR)/Net::DRI::DRD::CAT.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/LU/Contact.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::LU::Contact.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Core/Contact.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Core::Contact.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/DAS/SIDN/Message.pm $(INST_MAN3DIR)/Net::DRI::Protocol::DAS::SIDN::Message.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/AU/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::AU::Domain.$(MAN3EXT) \
	  lib/Net/DRI/DRD/WS.pm $(INST_MAN3DIR)/Net::DRI::DRD::WS.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Contact.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::SIDN::Contact.$(MAN3EXT) \
	  lib/Net/DRI/Data/Changes.pm $(INST_MAN3DIR)/Net::DRI::Data::Changes.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/NameStore.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::VeriSign::NameStore.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/ARNES/Contact.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::ARNES::Contact.$(MAN3EXT) 
	$(NOECHO) $(POD2MAN) --section=$(MAN3EXT) --perm_rw=$(PERM_RW) \
	  lib/Net/DRI/Protocol/EPP/Extensions/DNSBE/Contact.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::DNSBE::Contact.$(MAN3EXT) \
	  lib/Net/DRI/Data/Contact/EURid.pm $(INST_MAN3DIR)/Net::DRI::Data::Contact::EURid.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/DAS/AdamsNames/Connection.pm $(INST_MAN3DIR)/Net::DRI::Protocol::DAS::AdamsNames::Connection.$(MAN3EXT) \
	  lib/Net/DRI/DRD/Nominet.pm $(INST_MAN3DIR)/Net::DRI::DRD::Nominet.$(MAN3EXT) \
	  lib/Net/DRI/Data/StatusList.pm $(INST_MAN3DIR)/Net::DRI::Data::StatusList.$(MAN3EXT) \
	  lib/Net/DRI/DRD/GL.pm $(INST_MAN3DIR)/Net::DRI::DRD::GL.$(MAN3EXT) \
	  lib/Net/DRI/Data/Contact/SIDN.pm $(INST_MAN3DIR)/Net::DRI::Data::Contact::SIDN.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/OpenSRS/XCP/Host.pm $(INST_MAN3DIR)/Net::DRI::Protocol::OpenSRS::XCP::Host.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/Whois/Domain/MOBI.pm $(INST_MAN3DIR)/Net::DRI::Protocol::Whois::Domain::MOBI.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/RRI/Connection.pm $(INST_MAN3DIR)/Net::DRI::Protocol::RRI::Connection.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/EURid/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::EURid::Domain.$(MAN3EXT) \
	  lib/Net/DRI/Data/Contact/CIRA.pm $(INST_MAN3DIR)/Net::DRI::Data::Contact::CIRA.$(MAN3EXT) \
	  lib/Net/DRI/Data/Contact/IT.pm $(INST_MAN3DIR)/Net::DRI::Data::Contact::IT.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/FCCN.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::FCCN.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/NSgroup.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::NSgroup.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/NO/Message.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::NO::Message.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/CAT/DefensiveRegistration.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::CAT::DefensiveRegistration.$(MAN3EXT) \
	  lib/Net/DRI/DRD/IM.pm $(INST_MAN3DIR)/Net::DRI::DRD::IM.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/Whois/Domain/INFO.pm $(INST_MAN3DIR)/Net::DRI::Protocol::Whois::Domain::INFO.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/SE.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::SE.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/Whois/Domain/BIZ.pm $(INST_MAN3DIR)/Net::DRI::Protocol::Whois::Domain::BIZ.$(MAN3EXT) \
	  lib/Net/DRI/DRD/SE.pm $(INST_MAN3DIR)/Net::DRI::DRD::SE.$(MAN3EXT) \
	  lib/Net/DRI/DRD/AdamsNames.pm $(INST_MAN3DIR)/Net::DRI::DRD::AdamsNames.$(MAN3EXT) \
	  lib/Net/DRI/Data/Contact/NO.pm $(INST_MAN3DIR)/Net::DRI::Data::Contact::NO.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/EURid/Sunrise.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::EURid::Sunrise.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/AT/Result.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::AT::Result.$(MAN3EXT) 
	$(NOECHO) $(POD2MAN) --section=$(MAN3EXT) --perm_rw=$(PERM_RW) \
	  lib/Net/DRI/Data/Contact/BE.pm $(INST_MAN3DIR)/Net::DRI::Data::Contact::BE.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/CZ.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::CZ.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/US.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::US.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/DAS.pm $(INST_MAN3DIR)/Net::DRI::Protocol::DAS.$(MAN3EXT) \
	  lib/Net/DRI/DRD.pm $(INST_MAN3DIR)/Net::DRI::DRD.$(MAN3EXT) \
	  lib/Net/DRI/Protocol.pm $(INST_MAN3DIR)/Net::DRI::Protocol.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/CentralNic.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::CentralNic.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::Nominet::Domain.$(MAN3EXT) \
	  lib/Net/DRI/DRD/AG.pm $(INST_MAN3DIR)/Net::DRI::DRD::AG.$(MAN3EXT) \
	  lib/Net/DRI/DRD/AT.pm $(INST_MAN3DIR)/Net::DRI::DRD::AT.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/AFNIC/Notifications.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::AFNIC::Notifications.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/Whois/Domain/PT.pm $(INST_MAN3DIR)/Net::DRI::Protocol::Whois::Domain::PT.$(MAN3EXT) \
	  lib/Net/DRI/Data/Contact/FCCN.pm $(INST_MAN3DIR)/Net::DRI::Data::Contact::FCCN.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/PollRGP.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::VeriSign::PollRGP.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/AdamsNames/WS.pm $(INST_MAN3DIR)/Net::DRI::Protocol::AdamsNames::WS.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/CZ/NSSET.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::CZ::NSSET.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/DAS/Domain.pm $(INST_MAN3DIR)/Net::DRI::Protocol::DAS::Domain.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/RRI.pm $(INST_MAN3DIR)/Net::DRI::Protocol::RRI.$(MAN3EXT) \
	  lib/Net/DRI/Logging/Syslog.pm $(INST_MAN3DIR)/Net::DRI::Logging::Syslog.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/RRI/Contact.pm $(INST_MAN3DIR)/Net::DRI::Protocol::RRI::Contact.$(MAN3EXT) \
	  lib/Net/DRI/Data/Contact/ARNES.pm $(INST_MAN3DIR)/Net::DRI::Data::Contact::ARNES.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Connection.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Connection.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/Whois/Domain/WS.pm $(INST_MAN3DIR)/Net::DRI::Protocol::Whois::Domain::WS.$(MAN3EXT) \
	  lib/Net/DRI/Data/Contact.pm $(INST_MAN3DIR)/Net::DRI::Data::Contact.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/HTTP.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::HTTP.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/EPP/Extensions/E164.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::E164.$(MAN3EXT) \
	  lib/Net/DRI/DRD/SWITCH.pm $(INST_MAN3DIR)/Net::DRI::DRD::SWITCH.$(MAN3EXT) 
	$(NOECHO) $(POD2MAN) --section=$(MAN3EXT) --perm_rw=$(PERM_RW) \
	  lib/Net/DRI/Protocol/EPP/Extensions/NeuLevel/IDNLanguage.pm $(INST_MAN3DIR)/Net::DRI::Protocol::EPP::Extensions::NeuLevel::IDNLanguage.$(MAN3EXT) \
	  lib/Net/DRI/DRD/OpenSRS.pm $(INST_MAN3DIR)/Net::DRI::DRD::OpenSRS.$(MAN3EXT) \
	  lib/Net/DRI/DRD/HN.pm $(INST_MAN3DIR)/Net::DRI::DRD::HN.$(MAN3EXT) \
	  lib/Net/DRI/DRD/INFO.pm $(INST_MAN3DIR)/Net::DRI::DRD::INFO.$(MAN3EXT) \
	  lib/Net/DRI/Protocol/Whois/Domain/common.pm $(INST_MAN3DIR)/Net::DRI::Protocol::Whois::Domain::common.$(MAN3EXT) \
	  lib/Net/DRI/DRD/LC.pm $(INST_MAN3DIR)/Net::DRI::DRD::LC.$(MAN3EXT) 




# --- MakeMaker processPL section:


# --- MakeMaker installbin section:


# --- MakeMaker subdirs section:

# none

# --- MakeMaker clean_subdirs section:
clean_subdirs :
	$(NOECHO) $(NOOP)


# --- MakeMaker clean section:

# Delete temporary files but do not touch installed files. We don't delete
# the Makefile here so a later make realclean still has a makefile to use.

clean :: clean_subdirs
	- $(RM_F) \
	  *$(LIB_EXT) core \
	  core.[0-9] $(INST_ARCHAUTODIR)/extralibs.all \
	  core.[0-9][0-9] $(BASEEXT).bso \
	  pm_to_blib.ts core.[0-9][0-9][0-9][0-9] \
	  $(BASEEXT).x $(BOOTSTRAP) \
	  perl$(EXE_EXT) tmon.out \
	  *$(OBJ_EXT) pm_to_blib \
	  $(INST_ARCHAUTODIR)/extralibs.ld blibdirs.ts \
	  core.[0-9][0-9][0-9][0-9][0-9] *perl.core \
	  core.*perl.*.? $(MAKE_APERL_FILE) \
	  perl $(BASEEXT).def \
	  core.[0-9][0-9][0-9] mon.out \
	  lib$(BASEEXT).def perlmain.c \
	  perl.exe so_locations \
	  $(BASEEXT).exp 
	- $(RM_RF) \
	  Net-DRI-* blib 
	- $(MV) $(FIRST_MAKEFILE) $(MAKEFILE_OLD) $(DEV_NULL)


# --- MakeMaker realclean_subdirs section:
realclean_subdirs :
	$(NOECHO) $(NOOP)


# --- MakeMaker realclean section:
# Delete temporary files (via clean) and also delete dist files
realclean purge ::  clean realclean_subdirs
	- $(RM_F) \
	  $(MAKEFILE_OLD) $(FIRST_MAKEFILE) 
	- $(RM_RF) \
	  $(DISTVNAME) 


# --- MakeMaker metafile section:
metafile : create_distdir
	$(NOECHO) $(ECHO) Generating META.yml
	$(NOECHO) $(ECHO) '--- #YAML:1.0' > META_new.yml
	$(NOECHO) $(ECHO) 'name:               Net-DRI' >> META_new.yml
	$(NOECHO) $(ECHO) 'version:            0.96' >> META_new.yml
	$(NOECHO) $(ECHO) 'abstract:           Interface to Domain Name Registries/Registrars/Resellers' >> META_new.yml
	$(NOECHO) $(ECHO) 'author:' >> META_new.yml
	$(NOECHO) $(ECHO) '    - Patrick Mevzek <netdri@dotandco.com>' >> META_new.yml
	$(NOECHO) $(ECHO) 'license:            gpl' >> META_new.yml
	$(NOECHO) $(ECHO) 'distribution_type:  module' >> META_new.yml
	$(NOECHO) $(ECHO) 'configure_requires:' >> META_new.yml
	$(NOECHO) $(ECHO) '    ExtUtils::MakeMaker:  0' >> META_new.yml
	$(NOECHO) $(ECHO) 'build_requires:' >> META_new.yml
	$(NOECHO) $(ECHO) '    ExtUtils::MakeMaker:  0' >> META_new.yml
	$(NOECHO) $(ECHO) 'requires:' >> META_new.yml
	$(NOECHO) $(ECHO) '    Carp:                 0' >> META_new.yml
	$(NOECHO) $(ECHO) '    Class::Accessor:      0' >> META_new.yml
	$(NOECHO) $(ECHO) '    Class::Accessor::Chained:  0' >> META_new.yml
	$(NOECHO) $(ECHO) '    DateTime:             0' >> META_new.yml
	$(NOECHO) $(ECHO) '    DateTime::Duration:   0' >> META_new.yml
	$(NOECHO) $(ECHO) '    DateTime::Format::ISO8601:  0.06' >> META_new.yml
	$(NOECHO) $(ECHO) '    DateTime::Format::Strptime:  0' >> META_new.yml
	$(NOECHO) $(ECHO) '    DateTime::TimeZone:   0' >> META_new.yml
	$(NOECHO) $(ECHO) '    Email::Valid:         0' >> META_new.yml
	$(NOECHO) $(ECHO) '    IO::Socket::INET:     0' >> META_new.yml
	$(NOECHO) $(ECHO) '    IO::Socket::SSL:      0.90' >> META_new.yml
	$(NOECHO) $(ECHO) '    Test::More:           0' >> META_new.yml
	$(NOECHO) $(ECHO) '    Time::HiRes:          0' >> META_new.yml
	$(NOECHO) $(ECHO) '    UNIVERSAL::require:   0' >> META_new.yml
	$(NOECHO) $(ECHO) '    XML::LibXML:          1.61' >> META_new.yml
	$(NOECHO) $(ECHO) 'no_index:' >> META_new.yml
	$(NOECHO) $(ECHO) '    directory:' >> META_new.yml
	$(NOECHO) $(ECHO) '        - t' >> META_new.yml
	$(NOECHO) $(ECHO) '        - inc' >> META_new.yml
	$(NOECHO) $(ECHO) 'generated_by:       ExtUtils::MakeMaker version 6.55_02' >> META_new.yml
	$(NOECHO) $(ECHO) 'meta-spec:' >> META_new.yml
	$(NOECHO) $(ECHO) '    url:      http://module-build.sourceforge.net/META-spec-v1.4.html' >> META_new.yml
	$(NOECHO) $(ECHO) '    version:  1.4' >> META_new.yml
	-$(NOECHO) $(MV) META_new.yml $(DISTVNAME)/META.yml


# --- MakeMaker signature section:
signature :
	cpansign -s


# --- MakeMaker dist_basics section:
distclean :: realclean distcheck
	$(NOECHO) $(NOOP)

distcheck :
	$(PERLRUN) "-MExtUtils::Manifest=fullcheck" -e fullcheck

skipcheck :
	$(PERLRUN) "-MExtUtils::Manifest=skipcheck" -e skipcheck

manifest :
	$(PERLRUN) "-MExtUtils::Manifest=mkmanifest" -e mkmanifest

veryclean : realclean
	$(RM_F) *~ */*~ *.orig */*.orig *.bak */*.bak *.old */*.old 



# --- MakeMaker dist_core section:

dist : $(DIST_DEFAULT) $(FIRST_MAKEFILE)
	$(NOECHO) $(ABSPERLRUN) -l -e 'print '\''Warning: Makefile possibly out of date with $(VERSION_FROM)'\''' \
	  -e '    if -e '\''$(VERSION_FROM)'\'' and -M '\''$(VERSION_FROM)'\'' < -M '\''$(FIRST_MAKEFILE)'\'';' --

tardist : $(DISTVNAME).tar$(SUFFIX)
	$(NOECHO) $(NOOP)

uutardist : $(DISTVNAME).tar$(SUFFIX)
	uuencode $(DISTVNAME).tar$(SUFFIX) $(DISTVNAME).tar$(SUFFIX) > $(DISTVNAME).tar$(SUFFIX)_uu

$(DISTVNAME).tar$(SUFFIX) : distdir
	$(PREOP)
	$(TO_UNIX)
	$(TAR) $(TARFLAGS) $(DISTVNAME).tar $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(COMPRESS) $(DISTVNAME).tar
	$(POSTOP)

zipdist : $(DISTVNAME).zip
	$(NOECHO) $(NOOP)

$(DISTVNAME).zip : distdir
	$(PREOP)
	$(ZIP) $(ZIPFLAGS) $(DISTVNAME).zip $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(POSTOP)

shdist : distdir
	$(PREOP)
	$(SHAR) $(DISTVNAME) > $(DISTVNAME).shar
	$(RM_RF) $(DISTVNAME)
	$(POSTOP)


# --- MakeMaker distdir section:
create_distdir :
	$(RM_RF) $(DISTVNAME)
	$(PERLRUN) "-MExtUtils::Manifest=manicopy,maniread" \
		-e "manicopy(maniread(),'$(DISTVNAME)', '$(DIST_CP)');"

distdir : create_distdir distmeta 
	$(NOECHO) $(NOOP)



# --- MakeMaker dist_test section:
disttest : distdir
	cd $(DISTVNAME) && $(ABSPERLRUN) Makefile.PL "INSTALLDIRS=vendor" "create_packlist=0"
	cd $(DISTVNAME) && $(MAKE) $(PASTHRU)
	cd $(DISTVNAME) && $(MAKE) test $(PASTHRU)



# --- MakeMaker dist_ci section:

ci :
	$(PERLRUN) "-MExtUtils::Manifest=maniread" \
	  -e "@all = keys %{ maniread() };" \
	  -e "print(qq{Executing $(CI) @all\n}); system(qq{$(CI) @all});" \
	  -e "print(qq{Executing $(RCS_LABEL) ...\n}); system(qq{$(RCS_LABEL) @all});"


# --- MakeMaker distmeta section:
distmeta : create_distdir metafile
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'eval { maniadd({q{META.yml} => q{Module meta-data (added by MakeMaker)}}) } ' \
	  -e '    or print "Could not add META.yml to MANIFEST: $${'\''@'\''}\n"' --



# --- MakeMaker distsignature section:
distsignature : create_distdir
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'eval { maniadd({q{SIGNATURE} => q{Public-key signature (added by MakeMaker)}}) } ' \
	  -e '    or print "Could not add SIGNATURE to MANIFEST: $${'\''@'\''}\n"' --
	$(NOECHO) cd $(DISTVNAME) && $(TOUCH) SIGNATURE
	cd $(DISTVNAME) && cpansign -s



# --- MakeMaker install section:

install :: pure_install doc_install
	$(NOECHO) $(NOOP)

install_perl :: pure_perl_install doc_perl_install
	$(NOECHO) $(NOOP)

install_site :: pure_site_install doc_site_install
	$(NOECHO) $(NOOP)

install_vendor :: pure_vendor_install doc_vendor_install
	$(NOECHO) $(NOOP)

pure_install :: pure_$(INSTALLDIRS)_install
	$(NOECHO) $(NOOP)

doc_install :: doc_$(INSTALLDIRS)_install
	$(NOECHO) $(NOOP)

pure__install : pure_site_install
	$(NOECHO) $(ECHO) INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

doc__install : doc_site_install
	$(NOECHO) $(ECHO) INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

pure_perl_install :: all
	$(NOECHO) umask 022; $(MOD_INSTALL) \
		$(INST_LIB) $(DESTINSTALLPRIVLIB) \
		$(INST_ARCHLIB) $(DESTINSTALLARCHLIB) \
		$(INST_BIN) $(DESTINSTALLBIN) \
		$(INST_SCRIPT) $(DESTINSTALLSCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLMAN3DIR)
	$(NOECHO) $(WARN_IF_OLD_PACKLIST) \
		$(SITEARCHEXP)/auto/$(FULLEXT)


pure_site_install :: all
	$(NOECHO) umask 02; $(MOD_INSTALL) \
		read $(SITEARCHEXP)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLSITEARCH)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLSITELIB) \
		$(INST_ARCHLIB) $(DESTINSTALLSITEARCH) \
		$(INST_BIN) $(DESTINSTALLSITEBIN) \
		$(INST_SCRIPT) $(DESTINSTALLSITESCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLSITEMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLSITEMAN3DIR)
	$(NOECHO) $(WARN_IF_OLD_PACKLIST) \
		$(PERL_ARCHLIB)/auto/$(FULLEXT)

pure_vendor_install :: all
	$(NOECHO) umask 022; $(MOD_INSTALL) \
		$(INST_LIB) $(DESTINSTALLVENDORLIB) \
		$(INST_ARCHLIB) $(DESTINSTALLVENDORARCH) \
		$(INST_BIN) $(DESTINSTALLVENDORBIN) \
		$(INST_SCRIPT) $(DESTINSTALLVENDORSCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLVENDORMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLVENDORMAN3DIR)

doc_perl_install :: all

doc_site_install :: all
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLSITEARCH)/perllocal.pod
	-$(NOECHO) umask 02; $(MKPATH) $(DESTINSTALLSITEARCH)
	-$(NOECHO) umask 02; $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLSITELIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLSITEARCH)/perllocal.pod

doc_vendor_install :: all


uninstall :: uninstall_from_$(INSTALLDIRS)dirs
	$(NOECHO) $(NOOP)

uninstall_from_perldirs ::

uninstall_from_sitedirs ::
	$(NOECHO) $(UNINSTALL) $(SITEARCHEXP)/auto/$(FULLEXT)/.packlist

uninstall_from_vendordirs ::



# --- MakeMaker force section:
# Phony target to force checking subdirectories.
FORCE :
	$(NOECHO) $(NOOP)


# --- MakeMaker perldepend section:


# --- MakeMaker makefile section:
# We take a very conservative approach here, but it's worth it.
# We move Makefile to Makefile.old here to avoid gnu make looping.
$(FIRST_MAKEFILE) : Makefile.PL $(CONFIGDEP)
	$(NOECHO) $(ECHO) "Makefile out-of-date with respect to $?"
	$(NOECHO) $(ECHO) "Cleaning current config before rebuilding Makefile..."
	-$(NOECHO) $(RM_F) $(MAKEFILE_OLD)
	-$(NOECHO) $(MV)   $(FIRST_MAKEFILE) $(MAKEFILE_OLD)
	- $(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) clean $(DEV_NULL)
	$(PERLRUN) Makefile.PL "INSTALLDIRS=vendor" "create_packlist=0"
	$(NOECHO) $(ECHO) "==> Your Makefile has been rebuilt. <=="
	$(NOECHO) $(ECHO) "==> Please rerun the $(MAKE) command.  <=="
	$(FALSE)



# --- MakeMaker staticmake section:

# --- MakeMaker makeaperl section ---
MAP_TARGET    = perl
FULLPERL      = /usr/bin/perl

$(MAP_TARGET) :: static $(MAKE_APERL_FILE)
	$(MAKE) $(USEMAKEFILE) $(MAKE_APERL_FILE) $@

$(MAKE_APERL_FILE) : $(FIRST_MAKEFILE) pm_to_blib
	$(NOECHO) $(ECHO) Writing \"$(MAKE_APERL_FILE)\" for this $(MAP_TARGET)
	$(NOECHO) $(PERLRUNINST) \
		Makefile.PL DIR= \
		MAKEFILE=$(MAKE_APERL_FILE) LINKTYPE=static \
		MAKEAPERL=1 NORECURS=1 CCCDLFLAGS= \
		INSTALLDIRS=vendor \
		create_packlist=0


# --- MakeMaker test section:

TEST_VERBOSE=0
TEST_TYPE=test_$(LINKTYPE)
TEST_FILE = test.pl
TEST_FILES = t/*.t
TESTDB_SW = -d

testdb :: testdb_$(LINKTYPE)

test :: $(TEST_TYPE) subdirs-test

subdirs-test ::
	$(NOECHO) $(NOOP)


test_dynamic :: pure_all
	PERL_DL_NONLAZY=1 $(FULLPERLRUN) "-MExtUtils::Command::MM" "-e" "test_harness($(TEST_VERBOSE), '$(INST_LIB)', '$(INST_ARCHLIB)')" $(TEST_FILES)

testdb_dynamic :: pure_all
	PERL_DL_NONLAZY=1 $(FULLPERLRUN) $(TESTDB_SW) "-I$(INST_LIB)" "-I$(INST_ARCHLIB)" $(TEST_FILE)

test_ : test_dynamic

test_static :: test_dynamic
testdb_static :: testdb_dynamic


# --- MakeMaker ppd section:
# Creates a PPD (Perl Package Description) for a binary distribution.
ppd :
	$(NOECHO) $(ECHO) '<SOFTPKG NAME="$(DISTNAME)" VERSION="0.96">' > $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <ABSTRACT>Interface to Domain Name Registries/Registrars/Resellers</ABSTRACT>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <AUTHOR>Patrick Mevzek &lt;netdri@dotandco.com&gt;</AUTHOR>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <IMPLEMENTATION>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Carp::" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Class::Accessor" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Class::Accessor::Chained" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="DateTime::" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="DateTime::Duration" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="DateTime::Format::ISO8601" VERSION="0.06" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="DateTime::Format::Strptime" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="DateTime::TimeZone" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Email::Valid" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="IO::Socket::INET" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="IO::Socket::SSL" VERSION="0.9" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Test::More" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Time::HiRes" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="UNIVERSAL::require" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="XML::LibXML" VERSION="1.61" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <ARCHITECTURE NAME="x86_64-linux-gnu-thread-multi-5.10" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <CODEBASE HREF="" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    </IMPLEMENTATION>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '</SOFTPKG>' >> $(DISTNAME).ppd


# --- MakeMaker pm_to_blib section:

pm_to_blib : $(FIRST_MAKEFILE) $(TO_INST_PM)
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', q[$(PM_FILTER)], '\''$(PERM_DIR)'\'')' -- \
	  lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Host.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Host.pm \
	  lib/Net/DRI/Protocol/RRI/RegistryMessage.pm blib/lib/Net/DRI/Protocol/RRI/RegistryMessage.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/AFNIC/Domain.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/AFNIC/Domain.pm \
	  lib/Net/DRI/Protocol/OVH/WS.pm blib/lib/Net/DRI/Protocol/OVH/WS.pm \
	  lib/Net/DRI/DRD/PL.pm blib/lib/Net/DRI/DRD/PL.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/Sync.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/Sync.pm \
	  lib/Net/DRI/DRD/AFNIC.pm blib/lib/Net/DRI/DRD/AFNIC.pm \
	  lib/Net/DRI/Protocol/Gandi/WS/Message.pm blib/lib/Net/DRI/Protocol/Gandi/WS/Message.pm \
	  lib/Net/DRI/Transport/Socket.pm blib/lib/Net/DRI/Transport/Socket.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/BR/Contact.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/BR/Contact.pm \
	  lib/Net/DRI/DRD/TRAVEL.pm blib/lib/Net/DRI/DRD/TRAVEL.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/AERO/Domain.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/AERO/Domain.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/MOBI.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/MOBI.pm \
	  lib/Net/DRI/Protocol/DAS/AdamsNames/Message.pm blib/lib/Net/DRI/Protocol/DAS/AdamsNames/Message.pm \
	  lib/Net/DRI/DRD/BIZ.pm blib/lib/Net/DRI/DRD/BIZ.pm \
	  lib/Net/DRI/Protocol/RRP/Core/Host.pm blib/lib/Net/DRI/Protocol/RRP/Core/Host.pm \
	  lib/Net/DRI/Transport.pm blib/lib/Net/DRI/Transport.pm \
	  lib/Net/DRI/Protocol/Whois/Domain/CAT.pm blib/lib/Net/DRI/Protocol/Whois/Domain/CAT.pm \
	  lib/Net/DRI/DRD/ORG.pm blib/lib/Net/DRI/DRD/ORG.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/AT/Contact.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/AT/Contact.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/E164Validation/RFC5076.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/E164Validation/RFC5076.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/IT/Contact.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/IT/Contact.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Notifications.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Notifications.pm \
	  lib/Net/DRI/Protocol/EPP/Core/Status.pm blib/lib/Net/DRI/Protocol/EPP/Core/Status.pm \
	  lib/Net/DRI/DRD/ARNES.pm blib/lib/Net/DRI/DRD/ARNES.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/ASIA.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/ASIA.pm \
	  lib/Net/DRI/Protocol/Message.pm blib/lib/Net/DRI/Protocol/Message.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/AT/Message.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/AT/Message.pm \
	  lib/Net/DRI/DRD/OVH.pm blib/lib/Net/DRI/DRD/OVH.pm \
	  lib/Net/DRI/DRD/LU.pm blib/lib/Net/DRI/DRD/LU.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/CAT.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/CAT.pm 
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', q[$(PM_FILTER)], '\''$(PERM_DIR)'\'')' -- \
	  lib/Net/DRI/Protocol/IRIS/DCHK/Domain.pm blib/lib/Net/DRI/Protocol/IRIS/DCHK/Domain.pm \
	  lib/Net/DRI/Protocol/Whois/Domain/US.pm blib/lib/Net/DRI/Protocol/Whois/Domain/US.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/MOBI/Domain.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/MOBI/Domain.pm \
	  lib/Net/DRI/Protocol/DAS/AU/Domain.pm blib/lib/Net/DRI/Protocol/DAS/AU/Domain.pm \
	  lib/Net/DRI/Protocol/RRP/Message.pm blib/lib/Net/DRI/Protocol/RRP/Message.pm \
	  lib/Net/DRI/Transport/HTTP/SOAPLite.pm blib/lib/Net/DRI/Transport/HTTP/SOAPLite.pm \
	  lib/Net/DRI/Protocol/DAS/SIDN/Connection.pm blib/lib/Net/DRI/Protocol/DAS/SIDN/Connection.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/SIDN.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/SIDN.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/BR/Domain.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/BR/Domain.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/Afilias/IDNLanguage.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/Afilias/IDNLanguage.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/AERO.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/AERO.pm \
	  lib/Net/DRI/DRD/EURid.pm blib/lib/Net/DRI/DRD/EURid.pm \
	  lib/Net/DRI/Protocol/Whois/Message.pm blib/lib/Net/DRI/Protocol/Whois/Message.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/LU/Poll.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/LU/Poll.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/FCCN/Domain.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/FCCN/Domain.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/LU/Domain.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/LU/Domain.pm \
	  lib/Net/DRI/Data/Contact/ASIA.pm blib/lib/Net/DRI/Data/Contact/ASIA.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/AT/Domain.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/AT/Domain.pm \
	  lib/Net/DRI/Protocol/Whois.pm blib/lib/Net/DRI/Protocol/Whois.pm \
	  lib/Net/DRI/DRD/VC.pm blib/lib/Net/DRI/DRD/VC.pm \
	  lib/Net/DRI/Protocol/EPP/Core/Domain.pm blib/lib/Net/DRI/Protocol/EPP/Core/Domain.pm \
	  lib/Net/DRI/Data/Contact/CAT.pm blib/lib/Net/DRI/Data/Contact/CAT.pm \
	  lib/Net/DRI/Data/Hosts.pm blib/lib/Net/DRI/Data/Hosts.pm \
	  lib/Net/DRI/DRD/BE.pm blib/lib/Net/DRI/DRD/BE.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/ARNES.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/ARNES.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/SE/Extensions.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/SE/Extensions.pm \
	  lib/Net/DRI/DRD/NO.pm blib/lib/Net/DRI/DRD/NO.pm \
	  lib/Net/DRI/DRD/ME.pm blib/lib/Net/DRI/DRD/ME.pm \
	  lib/Net/DRI/Data/ContactSet.pm blib/lib/Net/DRI/Data/ContactSet.pm \
	  lib/Net/DRI/Protocol/Gandi/WS/Domain.pm blib/lib/Net/DRI/Protocol/Gandi/WS/Domain.pm \
	  lib/Net/DRI/Protocol/OpenSRS/XCP/Session.pm blib/lib/Net/DRI/Protocol/OpenSRS/XCP/Session.pm 
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', q[$(PM_FILTER)], '\''$(PERM_DIR)'\'')' -- \
	  lib/Net/DRI/Protocol/EPP/Extensions/ARNES/Domain.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/ARNES/Domain.pm \
	  lib/Net/DRI/Data/RegistryObject.pm blib/lib/Net/DRI/Data/RegistryObject.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Account.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Account.pm \
	  lib/Net/DRI/DRD/NAME.pm blib/lib/Net/DRI/DRD/NAME.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/NeuLevel/UIN.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/NeuLevel/UIN.pm \
	  lib/Net/DRI/Protocol/AFNIC/Email/Message.pm blib/lib/Net/DRI/Protocol/AFNIC/Email/Message.pm \
	  lib/Net/DRI/Protocol/OpenSRS/XCP/Message.pm blib/lib/Net/DRI/Protocol/OpenSRS/XCP/Message.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/ASIA/IPR.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/ASIA/IPR.pm \
	  lib/Net/DRI/Protocol/OVH/WS/Domain.pm blib/lib/Net/DRI/Protocol/OVH/WS/Domain.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/IT.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/IT.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/CIRA/Agreement.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/CIRA/Agreement.pm \
	  lib/Net/DRI/Protocol/AdamsNames/WS/Message.pm blib/lib/Net/DRI/Protocol/AdamsNames/WS/Message.pm \
	  lib/Net/DRI/Transport/HTTP/SOAPWSDL.pm blib/lib/Net/DRI/Transport/HTTP/SOAPWSDL.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/AT/IOptions.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/AT/IOptions.pm \
	  lib/Net/DRI/Transport/SOAP.pm blib/lib/Net/DRI/Transport/SOAP.pm \
	  lib/Net/DRI/Data/Contact/SWITCH.pm blib/lib/Net/DRI/Data/Contact/SWITCH.pm \
	  lib/Net/DRI/DRD/AU.pm blib/lib/Net/DRI/DRD/AU.pm \
	  lib/Net/DRI/Protocol/AFNIC/WS.pm blib/lib/Net/DRI/Protocol/AFNIC/WS.pm \
	  lib/Net/DRI/Protocol/Whois/Domain/EU.pm blib/lib/Net/DRI/Protocol/Whois/Domain/EU.pm \
	  lib/Net/DRI/Data/Contact/US.pm blib/lib/Net/DRI/Data/Contact/US.pm \
	  lib/Net/DRI/DRD/RFC.pm blib/lib/Net/DRI/DRD/RFC.pm \
	  lib/Net/DRI/DRD/BR.pm blib/lib/Net/DRI/DRD/BR.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/DNSBE/Domain.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/DNSBE/Domain.pm \
	  lib/Net/DRI/Protocol/EPP/Core/Session.pm blib/lib/Net/DRI/Protocol/EPP/Core/Session.pm \
	  lib/Net/DRI/Data/Contact/Nominet.pm blib/lib/Net/DRI/Data/Contact/Nominet.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/LU.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/LU.pm \
	  lib/Net/DRI.pm blib/lib/Net/DRI.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/GracePeriod.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/GracePeriod.pm \
	  lib/Net/DRI/Data/Contact/AERO.pm blib/lib/Net/DRI/Data/Contact/AERO.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/DNSBE.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/DNSBE.pm \
	  lib/Net/DRI/Protocol/BookMyName/WS/Account.pm blib/lib/Net/DRI/Protocol/BookMyName/WS/Account.pm 
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', q[$(PM_FILTER)], '\''$(PERM_DIR)'\'')' -- \
	  lib/Net/DRI/Protocol/RRP/Core/Domain.pm blib/lib/Net/DRI/Protocol/RRP/Core/Domain.pm \
	  lib/Net/DRI/DRD/IT.pm blib/lib/Net/DRI/DRD/IT.pm \
	  lib/Net/DRI/Protocol/Whois/Connection.pm blib/lib/Net/DRI/Protocol/Whois/Connection.pm \
	  lib/Net/DRI/Protocol/OVH/WS/Account.pm blib/lib/Net/DRI/Protocol/OVH/WS/Account.pm \
	  lib/Net/DRI/Protocol/Whois/Domain/AERO.pm blib/lib/Net/DRI/Protocol/Whois/Domain/AERO.pm \
	  lib/Net/DRI/Data/Contact/LU.pm blib/lib/Net/DRI/Data/Contact/LU.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Message.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Message.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/PL/Message.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/PL/Message.pm \
	  lib/Net/DRI/Protocol/DAS/AdamsNames/Domain.pm blib/lib/Net/DRI/Protocol/DAS/AdamsNames/Domain.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/BR.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/BR.pm \
	  lib/Net/DRI/Protocol/EPP/Message.pm blib/lib/Net/DRI/Protocol/EPP/Message.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/IENUMAT.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/IENUMAT.pm \
	  lib/Net/DRI/Protocol/IRIS/DCHK/Status.pm blib/lib/Net/DRI/Protocol/IRIS/DCHK/Status.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Notifications.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Notifications.pm \
	  lib/Net/DRI/DRD/CentralNic.pm blib/lib/Net/DRI/DRD/CentralNic.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/COOP/Contact.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/COOP/Contact.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/NO/Domain.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/NO/Domain.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/AERO/Contact.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/AERO/Contact.pm \
	  lib/Net/DRI/Protocol/AFNIC/WS/Message.pm blib/lib/Net/DRI/Protocol/AFNIC/WS/Message.pm \
	  lib/Net/DRI/Protocol/DAS/AdamsNames.pm blib/lib/Net/DRI/Protocol/DAS/AdamsNames.pm \
	  lib/Net/DRI/Data/Raw.pm blib/lib/Net/DRI/Data/Raw.pm \
	  lib/Net/DRI/DRD/NU.pm blib/lib/Net/DRI/DRD/NU.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/CentralNic/Release.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/CentralNic/Release.pm \
	  lib/Net/DRI/Transport/Defer.pm blib/lib/Net/DRI/Transport/Defer.pm \
	  lib/Net/DRI/DRD/SIDN.pm blib/lib/Net/DRI/DRD/SIDN.pm \
	  lib/Net/DRI/Protocol/OpenSRS/XCP/Domain.pm blib/lib/Net/DRI/Protocol/OpenSRS/XCP/Domain.pm \
	  lib/Net/DRI/Protocol/RRI/Domain.pm blib/lib/Net/DRI/Protocol/RRI/Domain.pm \
	  lib/Net/DRI/Protocol/Whois/Domain/TRAVEL.pm blib/lib/Net/DRI/Protocol/Whois/Domain/TRAVEL.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/AFNIC.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/AFNIC.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/PL.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/PL.pm 
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', q[$(PM_FILTER)], '\''$(PERM_DIR)'\'')' -- \
	  lib/Net/DRI/DRD/ASIA.pm blib/lib/Net/DRI/DRD/ASIA.pm \
	  lib/Net/DRI/Protocol/BookMyName/WS/Domain.pm blib/lib/Net/DRI/Protocol/BookMyName/WS/Domain.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/PRO.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/PRO.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/SWITCH.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/SWITCH.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/Afilias.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/Afilias.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/CIRA.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/CIRA.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/IT/Domain.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/IT/Domain.pm \
	  lib/Net/DRI/Protocol/AFNIC/Email.pm blib/lib/Net/DRI/Protocol/AFNIC/Email.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/CZ/Domain.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/CZ/Domain.pm \
	  lib/Net/DRI/Protocol/DAS/AU/Connection.pm blib/lib/Net/DRI/Protocol/DAS/AU/Connection.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/NO/Host.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/NO/Host.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/EURid/Message.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/EURid/Message.pm \
	  lib/Net/DRI/Protocol/OpenSRS/XCP.pm blib/lib/Net/DRI/Protocol/OpenSRS/XCP.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/AU.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/AU.pm \
	  lib/Net/DRI/Exception.pm blib/lib/Net/DRI/Exception.pm \
	  lib/Net/DRI/DRD/COOP.pm blib/lib/Net/DRI/DRD/COOP.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/AFNIC/Status.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/AFNIC/Status.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/EURid/Contact.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/EURid/Contact.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/PL/Domain.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/PL/Domain.pm \
	  lib/Net/DRI/BaseClass.pm blib/lib/Net/DRI/BaseClass.pm \
	  lib/Net/DRI/DRD/US.pm blib/lib/Net/DRI/DRD/US.pm \
	  lib/Net/DRI/Protocol/Whois/Domain/LU.pm blib/lib/Net/DRI/Protocol/Whois/Domain/LU.pm \
	  lib/Net/DRI/Protocol/Gandi/WS/Connection.pm blib/lib/Net/DRI/Protocol/Gandi/WS/Connection.pm \
	  lib/Net/DRI/Shell.pm blib/lib/Net/DRI/Shell.pm \
	  lib/Net/DRI/DRD/BookMyName.pm blib/lib/Net/DRI/DRD/BookMyName.pm \
	  lib/Net/DRI/Protocol/EPP/Core/Host.pm blib/lib/Net/DRI/Protocol/EPP/Core/Host.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/CAT/Domain.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/CAT/Domain.pm \
	  lib/Net/DRI/Protocol/IRIS/Message.pm blib/lib/Net/DRI/Protocol/IRIS/Message.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/PRO/Domain.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/PRO/Domain.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/Nominet.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/Nominet.pm 
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', q[$(PM_FILTER)], '\''$(PERM_DIR)'\'')' -- \
	  lib/Net/DRI/Protocol/EPP/Extensions/PRO/AV.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/PRO/AV.pm \
	  lib/Net/DRI/DRD/PRO.pm blib/lib/Net/DRI/DRD/PRO.pm \
	  lib/Net/DRI/Protocol/Gandi/WS/Account.pm blib/lib/Net/DRI/Protocol/Gandi/WS/Account.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/DNSBE/Message.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/DNSBE/Message.pm \
	  lib/Net/DRI/Logging/Files.pm blib/lib/Net/DRI/Logging/Files.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/VeriSign.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/VeriSign.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/PL/Contact.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/PL/Contact.pm \
	  lib/Net/DRI/Protocol/BookMyName/WS/Message.pm blib/lib/Net/DRI/Protocol/BookMyName/WS/Message.pm \
	  lib/Net/DRI/DRD/SC.pm blib/lib/Net/DRI/DRD/SC.pm \
	  lib/Net/DRI/DRD/MOBI.pm blib/lib/Net/DRI/DRD/MOBI.pm \
	  lib/Net/DRI/Protocol/Whois/Domain/AT.pm blib/lib/Net/DRI/Protocol/Whois/Domain/AT.pm \
	  lib/Net/DRI/Protocol/ResultStatus.pm blib/lib/Net/DRI/Protocol/ResultStatus.pm \
	  lib/Net/DRI/Data/Contact/AFNIC.pm blib/lib/Net/DRI/Data/Contact/AFNIC.pm \
	  lib/Net/DRI/Data/Contact/DENIC.pm blib/lib/Net/DRI/Data/Contact/DENIC.pm \
	  lib/Net/DRI/Transport/HTTP/XMLRPCLite.pm blib/lib/Net/DRI/Transport/HTTP/XMLRPCLite.pm \
	  lib/Net/DRI/Protocol/DAS/SIDN.pm blib/lib/Net/DRI/Protocol/DAS/SIDN.pm \
	  lib/Net/DRI/Protocol/DAS/Connection.pm blib/lib/Net/DRI/Protocol/DAS/Connection.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/JobsContact.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/JobsContact.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/EURid/Registrar.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/EURid/Registrar.pm \
	  lib/Net/DRI/Protocol/RRP/Connection.pm blib/lib/Net/DRI/Protocol/RRP/Connection.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Host.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Host.pm \
	  lib/Net/DRI/DRD/CIRA.pm blib/lib/Net/DRI/DRD/CIRA.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/CIRA/Notifications.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/CIRA/Notifications.pm \
	  lib/Net/DRI/Transport/HTTP.pm blib/lib/Net/DRI/Transport/HTTP.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/CentralNic/TTL.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/CentralNic/TTL.pm \
	  lib/Net/DRI/Logging/Null.pm blib/lib/Net/DRI/Logging/Null.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/NAME.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/NAME.pm \
	  lib/Net/DRI/Protocol/OVH/WS/Connection.pm blib/lib/Net/DRI/Protocol/OVH/WS/Connection.pm \
	  lib/Net/DRI/Protocol/Whois/Domain/ORG.pm blib/lib/Net/DRI/Protocol/Whois/Domain/ORG.pm \
	  lib/Net/DRI/Protocol/OpenSRS/XCP/Connection.pm blib/lib/Net/DRI/Protocol/OpenSRS/XCP/Connection.pm 
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', q[$(PM_FILTER)], '\''$(PERM_DIR)'\'')' -- \
	  lib/Net/DRI/Protocol/IRIS.pm blib/lib/Net/DRI/Protocol/IRIS.pm \
	  lib/Net/DRI/Protocol/DAS/AU.pm blib/lib/Net/DRI/Protocol/DAS/AU.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Contact.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Contact.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/CZ/Contact.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/CZ/Contact.pm \
	  lib/Net/DRI/Protocol/EPP.pm blib/lib/Net/DRI/Protocol/EPP.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/NO.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/NO.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/AT.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/AT.pm \
	  lib/Net/DRI/DRD/IRegistry.pm blib/lib/Net/DRI/DRD/IRegistry.pm \
	  lib/Net/DRI/Protocol/AdamsNames/WS/Domain.pm blib/lib/Net/DRI/Protocol/AdamsNames/WS/Domain.pm \
	  lib/Net/DRI/Protocol/BookMyName/WS.pm blib/lib/Net/DRI/Protocol/BookMyName/WS.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/SecDNS.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/SecDNS.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/US/Contact.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/US/Contact.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/NAME/EmailFwd.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/NAME/EmailFwd.pm \
	  lib/Net/DRI/Data/Contact/COOP.pm blib/lib/Net/DRI/Data/Contact/COOP.pm \
	  lib/Net/DRI/DRD/IENUMAT.pm blib/lib/Net/DRI/DRD/IENUMAT.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Domain.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Domain.pm \
	  lib/Net/DRI/Protocol/IRIS/XCP.pm blib/lib/Net/DRI/Protocol/IRIS/XCP.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/WhoisInfo.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/WhoisInfo.pm \
	  lib/Net/DRI/DRD/DENIC.pm blib/lib/Net/DRI/DRD/DENIC.pm \
	  lib/Net/DRI/Protocol/DAS/SIDN/Domain.pm blib/lib/Net/DRI/Protocol/DAS/SIDN/Domain.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/PollLowBalance.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/PollLowBalance.pm \
	  lib/Net/DRI/Protocol/EPP/Util.pm blib/lib/Net/DRI/Protocol/EPP/Util.pm \
	  lib/Net/DRI/Protocol/RRP/Core/Session.pm blib/lib/Net/DRI/Protocol/RRP/Core/Session.pm \
	  lib/Net/DRI/Protocol/IRIS/LWZ.pm blib/lib/Net/DRI/Protocol/IRIS/LWZ.pm \
	  lib/Net/DRI/Protocol/OpenSRS/XCP/Account.pm blib/lib/Net/DRI/Protocol/OpenSRS/XCP/Account.pm \
	  lib/Net/DRI/Protocol/Whois/Domain/NAME.pm blib/lib/Net/DRI/Protocol/Whois/Domain/NAME.pm \
	  lib/Net/DRI/Data/Contact/BR.pm blib/lib/Net/DRI/Data/Contact/BR.pm \
	  lib/Net/DRI/Protocol/EPP/Core/RegistryMessage.pm blib/lib/Net/DRI/Protocol/EPP/Core/RegistryMessage.pm \
	  lib/Net/DRI/DRD/AERO.pm blib/lib/Net/DRI/DRD/AERO.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/EURid.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/EURid.pm 
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', q[$(PM_FILTER)], '\''$(PERM_DIR)'\'')' -- \
	  lib/Net/DRI/Protocol/EPP/Extensions/NO/Contact.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/NO/Contact.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/CentralNic/WebForwarding.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/CentralNic/WebForwarding.pm \
	  lib/Net/DRI/DRD/CoCCA.pm blib/lib/Net/DRI/DRD/CoCCA.pm \
	  lib/Net/DRI/Util.pm blib/lib/Net/DRI/Util.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/AFNIC/Contact.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/AFNIC/Contact.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/BIZ.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/BIZ.pm \
	  lib/Net/DRI/Logging.pm blib/lib/Net/DRI/Logging.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/CAT/Contact.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/CAT/Contact.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/EURid/Notifications.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/EURid/Notifications.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/AT/ATResult.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/AT/ATResult.pm \
	  lib/Net/DRI/Data/Contact/OpenSRS.pm blib/lib/Net/DRI/Data/Contact/OpenSRS.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/IDNLanguage.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/IDNLanguage.pm \
	  lib/Net/DRI/Protocol/DAS/AU/Message.pm blib/lib/Net/DRI/Protocol/DAS/AU/Message.pm \
	  lib/Net/DRI/DRD/BZ.pm blib/lib/Net/DRI/DRD/BZ.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/ASIA/CED.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/ASIA/CED.pm \
	  lib/Net/DRI/Protocol/AdamsNames/WS/Connection.pm blib/lib/Net/DRI/Protocol/AdamsNames/WS/Connection.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/NeuLevel.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/NeuLevel.pm \
	  lib/Net/DRI/DRD/MN.pm blib/lib/Net/DRI/DRD/MN.pm \
	  lib/Net/DRI/Protocol/Gandi/WS.pm blib/lib/Net/DRI/Protocol/Gandi/WS.pm \
	  lib/Net/DRI/Protocol/AFNIC/Email/Domain.pm blib/lib/Net/DRI/Protocol/AFNIC/Email/Domain.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/IT/Notifications.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/IT/Notifications.pm \
	  lib/Net/DRI/Data/Contact/PL.pm blib/lib/Net/DRI/Data/Contact/PL.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/NO/Result.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/NO/Result.pm \
	  lib/Net/DRI/Protocol/OVH/WS/Message.pm blib/lib/Net/DRI/Protocol/OVH/WS/Message.pm \
	  lib/Net/DRI/DRD/ICANN.pm blib/lib/Net/DRI/DRD/ICANN.pm \
	  lib/Net/DRI/DRD/Gandi.pm blib/lib/Net/DRI/DRD/Gandi.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/E164Validation.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/E164Validation.pm \
	  lib/Net/DRI/Protocol/RRI/Message.pm blib/lib/Net/DRI/Protocol/RRI/Message.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/Afilias/Restore.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/Afilias/Restore.pm \
	  lib/Net/DRI/Cache.pm blib/lib/Net/DRI/Cache.pm 
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', q[$(PM_FILTER)], '\''$(PERM_DIR)'\'')' -- \
	  lib/Net/DRI/Protocol/Whois/Domain/COM.pm blib/lib/Net/DRI/Protocol/Whois/Domain/COM.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/LU/Status.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/LU/Status.pm \
	  lib/Net/DRI/Protocol/IRIS/Core.pm blib/lib/Net/DRI/Protocol/IRIS/Core.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/SecDNS11.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/SecDNS11.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/SE/Message.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/SE/Message.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/COOP.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/COOP.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/IRegistry.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/IRegistry.pm \
	  lib/Net/DRI/Logging/Stderr.pm blib/lib/Net/DRI/Logging/Stderr.pm \
	  lib/Net/DRI/Registry.pm blib/lib/Net/DRI/Registry.pm \
	  lib/Net/DRI/Protocol/AFNIC/WS/Domain.pm blib/lib/Net/DRI/Protocol/AFNIC/WS/Domain.pm \
	  lib/Net/DRI/Data/Contact/SE.pm blib/lib/Net/DRI/Data/Contact/SE.pm \
	  lib/Net/DRI/Data/Contact/JOBS.pm blib/lib/Net/DRI/Data/Contact/JOBS.pm \
	  lib/Net/DRI/Protocol/RRP.pm blib/lib/Net/DRI/Protocol/RRP.pm \
	  lib/Net/DRI/DRD/CZ.pm blib/lib/Net/DRI/DRD/CZ.pm \
	  lib/Net/DRI/Protocol/RRP/Core/Status.pm blib/lib/Net/DRI/Protocol/RRP/Core/Status.pm \
	  lib/Net/DRI/Protocol/DAS/Message.pm blib/lib/Net/DRI/Protocol/DAS/Message.pm \
	  lib/Net/DRI/DRD/PT.pm blib/lib/Net/DRI/DRD/PT.pm \
	  lib/Net/DRI/Transport/Dummy.pm blib/lib/Net/DRI/Transport/Dummy.pm \
	  lib/Net/DRI/Protocol/RRI/Session.pm blib/lib/Net/DRI/Protocol/RRI/Session.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/FCCN/Contact.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/FCCN/Contact.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/CIRA/Domain.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/CIRA/Domain.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/CIRA/Contact.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/CIRA/Contact.pm \
	  lib/Net/DRI/Data/Contact/AT.pm blib/lib/Net/DRI/Data/Contact/AT.pm \
	  lib/Net/DRI/Protocol/Whois/Domain/SE.pm blib/lib/Net/DRI/Protocol/Whois/Domain/SE.pm \
	  lib/Net/DRI/DRD/VNDS.pm blib/lib/Net/DRI/DRD/VNDS.pm \
	  lib/Net/DRI/Transport/SMTP.pm blib/lib/Net/DRI/Transport/SMTP.pm \
	  lib/Net/DRI/DRD/CAT.pm blib/lib/Net/DRI/DRD/CAT.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/LU/Contact.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/LU/Contact.pm \
	  lib/Net/DRI/Protocol/EPP/Core/Contact.pm blib/lib/Net/DRI/Protocol/EPP/Core/Contact.pm \
	  lib/Net/DRI/Protocol/DAS/SIDN/Message.pm blib/lib/Net/DRI/Protocol/DAS/SIDN/Message.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/AU/Domain.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/AU/Domain.pm \
	  lib/Net/DRI/DRD/WS.pm blib/lib/Net/DRI/DRD/WS.pm 
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', q[$(PM_FILTER)], '\''$(PERM_DIR)'\'')' -- \
	  lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Contact.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/SIDN/Contact.pm \
	  lib/Net/DRI/Data/Changes.pm blib/lib/Net/DRI/Data/Changes.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/NameStore.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/NameStore.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/ARNES/Contact.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/ARNES/Contact.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/DNSBE/Contact.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/DNSBE/Contact.pm \
	  lib/Net/DRI/Data/Contact/EURid.pm blib/lib/Net/DRI/Data/Contact/EURid.pm \
	  lib/Net/DRI/Protocol/DAS/AdamsNames/Connection.pm blib/lib/Net/DRI/Protocol/DAS/AdamsNames/Connection.pm \
	  lib/Net/DRI/DRD/Nominet.pm blib/lib/Net/DRI/DRD/Nominet.pm \
	  lib/Net/DRI/Data/StatusList.pm blib/lib/Net/DRI/Data/StatusList.pm \
	  lib/Net/DRI/DRD/GL.pm blib/lib/Net/DRI/DRD/GL.pm \
	  lib/Net/DRI/Data/Contact/SIDN.pm blib/lib/Net/DRI/Data/Contact/SIDN.pm \
	  lib/Net/DRI/Protocol/OpenSRS/XCP/Host.pm blib/lib/Net/DRI/Protocol/OpenSRS/XCP/Host.pm \
	  lib/Net/DRI/Protocol/Whois/Domain/MOBI.pm blib/lib/Net/DRI/Protocol/Whois/Domain/MOBI.pm \
	  lib/Net/DRI/Protocol/RRI/Connection.pm blib/lib/Net/DRI/Protocol/RRI/Connection.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/EURid/Domain.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/EURid/Domain.pm \
	  lib/Net/DRI/Data/Contact/CIRA.pm blib/lib/Net/DRI/Data/Contact/CIRA.pm \
	  lib/Net/DRI/Data/Contact/IT.pm blib/lib/Net/DRI/Data/Contact/IT.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/FCCN.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/FCCN.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/NSgroup.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/NSgroup.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/NO/Message.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/NO/Message.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/CAT/DefensiveRegistration.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/CAT/DefensiveRegistration.pm \
	  lib/Net/DRI/DRD/IM.pm blib/lib/Net/DRI/DRD/IM.pm \
	  lib/Net/DRI/Protocol/Whois/Domain/INFO.pm blib/lib/Net/DRI/Protocol/Whois/Domain/INFO.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/SE.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/SE.pm \
	  lib/Net/DRI/Protocol/Whois/Domain/BIZ.pm blib/lib/Net/DRI/Protocol/Whois/Domain/BIZ.pm \
	  lib/Net/DRI/DRD/SE.pm blib/lib/Net/DRI/DRD/SE.pm \
	  lib/Net/DRI/DRD/AdamsNames.pm blib/lib/Net/DRI/DRD/AdamsNames.pm \
	  lib/Net/DRI/Data/Contact/NO.pm blib/lib/Net/DRI/Data/Contact/NO.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/EURid/Sunrise.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/EURid/Sunrise.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/AT/Result.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/AT/Result.pm 
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', q[$(PM_FILTER)], '\''$(PERM_DIR)'\'')' -- \
	  lib/Net/DRI/Data/Contact/BE.pm blib/lib/Net/DRI/Data/Contact/BE.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/CZ.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/CZ.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/US.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/US.pm \
	  lib/Net/DRI/Protocol/DAS.pm blib/lib/Net/DRI/Protocol/DAS.pm \
	  lib/Net/DRI/DRD.pm blib/lib/Net/DRI/DRD.pm \
	  lib/Net/DRI/Protocol.pm blib/lib/Net/DRI/Protocol.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/CentralNic.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/CentralNic.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Domain.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/Nominet/Domain.pm \
	  lib/Net/DRI/DRD/AG.pm blib/lib/Net/DRI/DRD/AG.pm \
	  lib/Net/DRI/DRD/AT.pm blib/lib/Net/DRI/DRD/AT.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/AFNIC/Notifications.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/AFNIC/Notifications.pm \
	  lib/Net/DRI/Protocol/Whois/Domain/PT.pm blib/lib/Net/DRI/Protocol/Whois/Domain/PT.pm \
	  lib/Net/DRI/Data/Contact/FCCN.pm blib/lib/Net/DRI/Data/Contact/FCCN.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/PollRGP.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/VeriSign/PollRGP.pm \
	  lib/Net/DRI/Protocol/AdamsNames/WS.pm blib/lib/Net/DRI/Protocol/AdamsNames/WS.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/CZ/NSSET.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/CZ/NSSET.pm \
	  lib/Net/DRI/Protocol/DAS/Domain.pm blib/lib/Net/DRI/Protocol/DAS/Domain.pm \
	  lib/Net/DRI/Protocol/RRI.pm blib/lib/Net/DRI/Protocol/RRI.pm \
	  lib/Net/DRI/Logging/Syslog.pm blib/lib/Net/DRI/Logging/Syslog.pm \
	  lib/Net/DRI/Protocol/RRI/Contact.pm blib/lib/Net/DRI/Protocol/RRI/Contact.pm \
	  lib/Net/DRI/Data/Contact/ARNES.pm blib/lib/Net/DRI/Data/Contact/ARNES.pm \
	  lib/Net/DRI/Protocol/EPP/Connection.pm blib/lib/Net/DRI/Protocol/EPP/Connection.pm \
	  lib/Net/DRI/Protocol/Whois/Domain/WS.pm blib/lib/Net/DRI/Protocol/Whois/Domain/WS.pm \
	  lib/Net/DRI/Data/Contact.pm blib/lib/Net/DRI/Data/Contact.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/HTTP.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/HTTP.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/E164.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/E164.pm \
	  lib/Net/DRI/DRD/SWITCH.pm blib/lib/Net/DRI/DRD/SWITCH.pm \
	  lib/Net/DRI/Protocol/EPP/Extensions/NeuLevel/IDNLanguage.pm blib/lib/Net/DRI/Protocol/EPP/Extensions/NeuLevel/IDNLanguage.pm \
	  lib/Net/DRI/DRD/OpenSRS.pm blib/lib/Net/DRI/DRD/OpenSRS.pm \
	  lib/Net/DRI/DRD/HN.pm blib/lib/Net/DRI/DRD/HN.pm \
	  lib/Net/DRI/DRD/INFO.pm blib/lib/Net/DRI/DRD/INFO.pm \
	  lib/Net/DRI/Protocol/Whois/Domain/common.pm blib/lib/Net/DRI/Protocol/Whois/Domain/common.pm \
	  lib/Net/DRI/DRD/LC.pm blib/lib/Net/DRI/DRD/LC.pm 
	$(NOECHO) $(TOUCH) pm_to_blib


# --- MakeMaker selfdocument section:


# --- MakeMaker postamble section:


# End.
