#!/bin/bash
source halium.env
cd $ANDROID_ROOT

hybris-patches/apply-patches.sh --mb
source build/envsetup.sh
export USE_HOST_LEX=yes
export USE_CCACHE=1
breakfast $DEVICE

mka installclean
mka recoveryimage

echo "md5sum recovery.img"
md5sum $ANDROID_ROOT/out/target/product/dream2lte/recovery.img
