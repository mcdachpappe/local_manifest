#!/bin/bash

. build/envsetup.sh

#add Magisk
pushd build
#Build: Switch to Magisk as the built in root
wget https://github.com/nvertigo/android_build/commit/63a305e3312595f73d4e037e66bdfed87ecc1d20.patch -O - | git am
#magisk: delete magisk.zip from system after flashing
wget https://github.com/nvertigo/android_build/commit/5bd6eb23466b8c0b13142b20360fc6e4670e3ba5.patch -O - | git am
popd

#network-traffic monitor
repopick -t network-traffic

#init.rc: set initial cpuset to all cores
pushd system/core
git fetch https://review.lineageos.org/LineageOS/android_system_core refs/changes/32/169032/1 && git cherry-pick FETCH_HEAD
popd

#microG
#pushd frameworks/base
#Add signature Spoofing permission
#wget https://github.com/nvertigo/android_frameworks_base/commit/ab2aa7fbb522e8b4a85772836345382d22e4ee13.patch -O - | git am
#Allow location providers also outside of /system
#wget https://github.com/nvertigo/android_frameworks_base/commit/6408344bc9ef06dd264a5ad4431659e21ff675d5.patch -O - | git am
#popd

#change local version
pushd device/oneplus/oneplus3t
wget https://github.com/mcdachpappe/android_device_oneplus_oneplus3t/commit/80dd9234a6d326e6ee017f7f5bb26453a411d3a4.patch -O - | git am
popd

#enable Nightdisplay
pushd device/oneplus/oneplus3t
git fetch https://review.lineageos.org/LineageOS/android_device_oneplus_oneplus3 refs/changes/68/165968/1 && git cherry-pick FETCH_HEAD
popd

#Notification slider: add extra options
pushd device/oppo/common
wget https://github.com/mcdachpappe/android_device_oppo_common/commit/0dc1b9c7ff1b236d03c7fa0629e432082d2736a4.patch -O - | git am
popd
#Notification slider: add extra options -> Kernel patches
pushd kernel/oneplus/msm8996
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996/commit/a78d731890a1e88372dfdab0c6bdf87b6a585b94.patch -O - | git am
popd
