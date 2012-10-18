#!/bin/sh

dpkg-buildpackage -rfakeroot -tc -us -uc
mv ../libnet-dri*.deb .
rm ../libnet-dri*
