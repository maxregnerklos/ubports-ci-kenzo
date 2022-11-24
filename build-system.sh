#!/bin/bash
source halium.env
cd $ANDROID_ROOT

make -j$(nproc) installclean
make -j$(nproc) systemimage

echo "md5sum system.img"
md5sum $ANDROID_ROOT/out/target/product/dream2lte/system.img
