#!/bin/bash
source halium.env
cd $ANDROID_ROOT

source build/envsetup.sh
export USE_HOST_LEX=yes
export USE_CCACHE=1
breakfast $DEVICE

mka installclean
mka systemimage

echo "md5sum system.img"
md5sum $ANDROID_ROOT/out/target/product/dream2lte/system.img
