#!/bin/bash
source halium.env
cd $ANDROID_ROOT

hybris-patches/apply-patches.sh --mb
source build/envsetup.sh
export USE_HOST_LEX=yes
export USE_CCACHE=1
breakfast $DEVICE
mka mkbootimg
mka e2fsdroid
