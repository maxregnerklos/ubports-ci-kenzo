#!/bin/bash
source halium.env
cd $ANDROID_ROOT

mka installclean
mka systemimage

echo "md5sum system.img"
md5sum $ANDROID_ROOT/out/target/product/dream2lte/system.img
