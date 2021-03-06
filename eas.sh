#!/bin/bash

#
#  Kernel Build Script!
#  Based off AK'sbuild script - Thanks!
#

# Bash Color
rm .version
green='\033[01;32m'
red='\033[01;31m'
blink_red='\033[05;31m'
restore='\033[0m'

clear

# Resources
THREAD="-j$(grep -c ^processor /proc/cpuinfo)"
KERNEL="Image.gz-dtb"
VER="mcd"
HOME="home/Danny"

# Kernel zip name
HASH=`git rev-parse --short=8 HEAD`
KERNEL_ZIP="$VER-$(date +%y%m%d)-$HASH"

# Vars
export ARCH=arm64
export SUBARCH=arm64
export LOCALVERSION=~`echo "$VER"`
export DEFCONFIG="msm-perf_defconfig"
export KBUILD_BUILD_USER=danny
export KBUILD_BUILD_HOST=vmbox

# Use CCACHE
export USE_CCACHE=1
export CCACHE_DIR=mnt/hgfs/Android/.ccache
export CCACHE_MAX_SIZE=15G
ccache -M $CCACHE_MAX_SIZE
export CROSS_COMPILE="ccache $HOME/eas/aarch64-linux-android-4.9/bin/aarch64-linux-android-"

# Clang
CC="" # Path to clang executable
CLANG_TRIPLE="aarch64-linux-gnu-"

# Paths
KERNEL_DIR="$HOME/eas/kernel"
KBUILD_OUTPUT="${KERNEL_DIR}/out"
AK2_DIR="$HOME/eas/AnyKernel2"
ZIP_MOVE="$HOME/eas"
ZIMAGE_DIR="$KBUILD_OUTPUT/arch/$ARCH/boot"

# Create output directory
mkdir -p ${KBUILD_OUTPUT}

# Functions
function clean_all {
        cd $AK2_DIR
        rm -rf $KERNEL
        rm -rf zImage
        cd $KERNEL_DIR
        echo
        make O=${KBUILD_OUTPUT} clean && make O=${KBUILD_OUTPUT} mrproper
}

function make_kernel {
        echo
        make O=${KBUILD_OUTPUT} $DEFCONFIG
        make O=${KBUILD_OUTPUT} $THREAD
}

function make_zip {
        cp -vr $ZIMAGE_DIR/$KERNEL $AK2_DIR/zImage
        cd $AK2_DIR
        zip -r9 $KERNEL_ZIP.zip * -x README.md
        mv *.zip $ZIP_MOVE
        cd $KERNEL_DIR
}

DATE_START=$(date +"%s")

echo -e "${green}"
echo "Kernel creation and update script:"
echo -e "${restore}"

while read -p "Do you want to clean stuffs (y/n)? " cchoice
do
case "$cchoice" in
    y|Y )
        checkout_branches
        clean_all
        echo
        echo "All Cleaned now."
        break
        ;;
    n|N )
        break
        ;;
    * )
        echo
        echo "Invalid try again!"
        echo
        ;;
esac
done

echo

while read -p "Do you want to build kernel (y/n)? " dchoice
do
case "$dchoice" in
  y|Y)
    make_kernel
    break
    ;;
  n|N )
    break
    ;;
  * )
    echo
    echo "Invalid try again!"
    echo
    ;;
esac
done

while read -p "Do you want to ZIP kernel (y/n)? " dchoice
do
case "$dchoice" in
  y|Y)
    make_zip
    break
    ;;
  n|N )
    break
    ;;
  * )
    echo
    echo "Invalid try again!"
    echo
    ;;
esac
done

echo -e "${green}"
echo "-------------------"
echo "Build Completed in:"
echo "-------------------"
echo -e "${restore}"

DATE_END=$(date +"%s")
DIFF=$(($DATE_END - $DATE_START))
echo "Time: $(($DIFF / 60)) minute(s) and $(($DIFF % 60)) seconds."
echo
