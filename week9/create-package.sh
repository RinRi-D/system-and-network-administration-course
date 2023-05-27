#!/bin/bash

rm -rf hellopackage
mkdir -p hellopackage hellopackage/usr/local/bin hellopackage/var/helloworld
printf "%s" '#!/usr/bin/env python3\nprint("Hello, World!")' > hellopackage/var/helloworld/helloworld.py
printf "%s" '#!/bin/bash\n/var/helloworld/helloworld.py' > hellopackage/usr/local/bin/helloworld
chmod -R 0755 hellopackage/var/helloworld hellopackage/usr/local/bin/helloworld

mkdir -p hellopackage/DEBIAN
cp control hellopackage/DEBIAN/
dpkg-deb --build --root-owner-group hellopackage
