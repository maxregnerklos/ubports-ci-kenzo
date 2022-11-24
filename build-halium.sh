#!/bin/bash
source halium.env
cd $ANDROID_ROOT

source build/envsetup.sh
export USE_HOST_LEX=yes
export USE_CCACHE=1
breakfast $DEVICE

mka installclean
mka halium-boot

echo "md5sum halium-boot.img"
md5sum $ANDROID_ROOT/out/target/product/dream2lte/halium-boot.img
