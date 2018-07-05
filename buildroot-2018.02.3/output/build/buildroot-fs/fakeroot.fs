#!/bin/sh
set -e
chown -h -R 0:0 /home/hardik/Project/TFA9879/buildroot-2018.02.3/output/target
/home/hardik/Project/TFA9879/buildroot-2018.02.3/output/host/bin/makedevs -d /home/hardik/Project/TFA9879/buildroot-2018.02.3/output/build/buildroot-fs/device_table.txt /home/hardik/Project/TFA9879/buildroot-2018.02.3/output/target
   	(cd /home/hardik/Project/TFA9879/buildroot-2018.02.3/output/target; find -print0 | LC_ALL=C sort -z | tar  -cf /home/hardik/Project/TFA9879/buildroot-2018.02.3/output/images/rootfs.tar --null --no-recursion -T - --numeric-owner)
