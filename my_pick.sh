#!/bin/bash


. build/envsetup.sh

read -p "Press ENTER..."

#add Magisk
#pushd build
#wget https://github.com/nvertigo/android_build/commit/63a305e3312595f73d4e037e66bdfed87ecc1d20.patch -O - | git am

#popd


#read -p "Press ENTER..."

. cherry-pick.sh
