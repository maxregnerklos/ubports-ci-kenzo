#!/bin/bash
source halium.env
cd $ANDROID_ROOT

make -j$(nproc) installclean
make -j$(nproc) halium-boot

echo "md5sum halium-boot.img"
md5sum $ANDROID_ROOT/out/target/product/dream2lte/halium-boot.img
