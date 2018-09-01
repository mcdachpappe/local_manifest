#!/bin/bash

# if you want to build without using ccache, comment the next 4 lines
export USE_CCACHE=1
export CCACHE_DIR=/mnt/hgfs/Android/.ccache
export CCACHE_MAX_SIZE=15G
ccache -M $CCACHE_MAX_SIZE

# target your toolchain dir
export CROSS_COMPILE=/home/danny/msmx/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-7.3/bin/aarch64-linux-gnu-
export ARCH=arm64
export SUBARCH=arm64

# cd to your kernel dir
cd /home/danny/msmx/kernel/oneplus/msm8996
make O=out clean
make O=out mrproper
make O=out oneplus3_defconfig
make O=out -j12 > log
