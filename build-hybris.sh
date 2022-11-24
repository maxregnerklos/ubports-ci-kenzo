#!/bin/bash
source halium.env
cd $ANDROID_ROOT

source build/envsetup.sh
export USE_HOST_LEX=yes
export USE_CCACHE=1
breakfast $DEVICE

mka hybris-boot

echo "md5sum hybris-boot.img"
md5sum $ANDROID_ROOT/out/target/product/dream2lte/hybris-boot.img
