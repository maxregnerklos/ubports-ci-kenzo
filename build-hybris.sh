#!/bin/bash
source halium.env
cd $ANDROID_ROOT

make -j$(nproc) hybris-boot

echo "md5sum hybris-boot.img"
md5sum $ANDROID_ROOT/out/target/product/dream2lte/hybris-boot.img
