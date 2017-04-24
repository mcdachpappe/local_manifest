#!/bin/bash

#. build/envsetup.sh

#temp fix for ogg/vorbis
pushd hardware/qcom/audio-caf/msm8996
git fetch https://review.lineageos.org/LineageOS/android_hardware_qcom_audio refs/changes/64/163564/3 && git cherry-pick FETCH_HEAD
popd

#add Magisk
pushd build
#Build: Switch to Magisk as the built in root
wget https://github.com/nvertigo/android_build/commit/63a305e3312595f73d4e037e66bdfed87ecc1d20.patch -O - | git am
#magisk: delete magisk.zip from system after flashing
wget https://github.com/nvertigo/android_build/commit/5bd6eb23466b8c0b13142b20360fc6e4670e3ba5.patch -O - | git am
popd

#microG
#pushd frameworks/base
#Add signature Spoofing permission
#wget https://github.com/nvertigo/android_frameworks_base/commit/ab2aa7fbb522e8b4a85772836345382d22e4ee13.patch -O - | git am
#Allow location providers also outside of /system
#wget https://github.com/nvertigo/android_frameworks_base/commit/6408344bc9ef06dd264a5ad4431659e21ff675d5.patch -O - | git am
#popd

#Nightdisplay - MERGED
#pushd device/oneplus/oneplus3t
#git fetch git fetch https://review.lineageos.org/LineageOS/android_device_oneplus_oneplus3 refs/changes/68/165968/1 && git cherry-pick FETCH_HEAD
#popd
