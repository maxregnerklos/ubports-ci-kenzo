#!/bin/bash
source halium.env
cd $ANDROID_ROOT

hybris-patches/apply-patches.sh --mb
source build/envsetup.sh
export USE_HOST_LEX=yes
export USE_CCACHE=1
breakfast $DEVICE

make -j$(nproc) mkbootimg
make -j$(nproc) e2fsdroid
make -j$(nproc) hybris-boot
make -j$(nproc) halium-boot
make -j$(nproc) recoveryimage
make -j$(nproc) systemimage 

echo "md5sum built images"
md5sum $ANDROID_ROOT/out/target/product/dream2lte/hybris-boot.img
md5sum $ANDROID_ROOT/out/target/product/dream2lte/halium-boot.img
md5sum $ANDROID_ROOT/out/target/product/dream2lte/recovery.img
md5sum $ANDROID_ROOT/out/target/product/dream2lte/system.img
