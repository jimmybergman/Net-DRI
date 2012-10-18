#!/bin/sh

if [ `dirname "$0"` != "." ]; then
	echo "you have run this script from the dir it is placed in"
	exit 1
fi

rm -f /usr/src/redhat/SOURCES/perl-Net-DRI-*
rm -f /usr/src/redhat/SPECS/perl-Net-DRI-*
rm -f /usr/src/redhat/RPMS/*/perl-Net-DRI-*
rm -f /usr/src/redhat/SRPMS/perl-Net-DRI-*
cp perl-Net-DRI.spec /usr/src/redhat/SPECS

startdir="$PWD"

tardir=`mktemp -d || exit 1`
mkdir "$tardir"/perl-Net-DRI
cp -a . "$tardir"/perl-Net-DRI
cd "$tardir"

tar cfpz /usr/src/redhat/SOURCES/perl-Net-DRI.tar.gz --exclude "*/packages" --exclude "*/dependencies" --exclude "*/.svn" --exclude="*/.git" perl-Net-DRI

cd "$startdir"
rm -rf "$tardir"

cd /usr/src/redhat/SPECS
rpmbuild --sign -bb perl-Net-DRI.spec
retval=$?
if [ $retval != 0 ]; then
	exit $retval
fi

cd "$startdir"
cp /usr/src/redhat/RPMS/*/perl-Net-DRI-* .
rm -f *-debuginfo-*rpm
