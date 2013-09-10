#!/bin/sh

echo "Building root filesystem"
echo "Please wait ..."

cd rootfs && find . | cpio -H newc -o | gzip > ../out/rootfs.cpio.gz

echo "Done!"