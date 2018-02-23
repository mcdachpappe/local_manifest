#!/bin/bash

export CROSS_COMPILE=/home/danny/android/toolchain/bin/aarch64-linux-android-
export ARCH=arm64
export SUBARCH=arm64

cd /home/danny/android/gzosp-base
make O=out clean
make O=out mrproper
make O=out oneplus3_defconfig
make O=out -j6
