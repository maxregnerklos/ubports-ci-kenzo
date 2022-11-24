#!/bin/bash
source halium.env
cd $ANDROID_ROOT

make -j$(nproc) installclean
make -j$(nproc) recoveryimage

echo "md5sum recovery.img"
md5sum $ANDROID_ROOT/out/target/product/dream2lte/recovery.img
