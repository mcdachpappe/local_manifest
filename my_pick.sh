#!/bin/bash

# This script needs to know where you build root resides.
# Set LAOSROOT accordingly, or it will not work.
# LOASROOT has to be an absolute path!

LAOSROOT=~/cm14

# You need to clone https://github.com/nvertigo/merge_script
# LOMSDIR is the absolute path to where you cloned merge_script.

LOMSDIR=~/cm14/my_tmp/merge_script

# This is NOT synced by repo sync. So we take care of it:
pushd ${LOMSDIR}
git pull
git status
popd


. build/envsetup.sh

read -p "Press ENTER..."

#add Magisk
pushd build
#Build: Switch to Magisk as the built in root
wget https://github.com/nvertigo/android_build/commit/63a305e3312595f73d4e037e66bdfed87ecc1d20.patch -O - | git am
#magisk: delete magisk.zip from system after flashing
wget https://github.com/nvertigo/android_build/commit/5bd6eb23466b8c0b13142b20360fc6e4670e3ba5.patch -O - | git am
popd

read -p "Press ENTER..."

#pushd frameworks/base
#microG
#Add signature Spoofing permission
#wget https://github.com/nvertigo/android_frameworks_base/commit/995cd65ea42897b7adb4ea0fa837bb199eebc5b2.patch -O - | git am
#Allow location providers also outside of /system
#wget https://github.com/nvertigo/android_frameworks_base/commit/cca0a256a0b237d0df5a97a84c5ad23a7848b249.patch -O - | git am
#popd

#read -p "Press ENTER..."

repopick -t network-traffic

read -p "Press ENTER..."

pushd frameworks/base
#DASH
#BatteryService: add dash charging support
wget https://github.com/nvertigo/android_frameworks_base/commit/0e35a53553f65710237d953bc5359ab94517018d.patch -O - | git am
popd


read -p "Press ENTER..."

# get the LineageOMS commits:
${LOMSDIR}/lineage_oms_merge.sh ${LAOSROOT}


#change local version
pushd device/oneplus/oneplus3t
wget https://github.com/mcdachpappe/android_device_oneplus_oneplus3t/commit/80dd9234a6d326e6ee017f7f5bb26453a411d3a4.patch -O - | git am
popd

read -p "Press ENTER..."

#enable Nightdisplay
pushd device/oneplus/oneplus3t
git fetch https://review.lineageos.org/LineageOS/android_device_oneplus_oneplus3 refs/changes/68/165968/1 && git cherry-pick FETCH_HEAD
popd

read -p "Press ENTER..."

#Notification slider: add extra options
pushd device/oppo/common
wget https://github.com/mcdachpappe/android_device_oppo_common/commit/0dc1b9c7ff1b236d03c7fa0629e432082d2736a4.patch -O - | git am
popd
#Notification slider: add extra options -> Kernel patches
pushd kernel/oneplus/msm8996
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996/commit/a78d731890a1e88372dfdab0c6bdf87b6a585b94.patch -O - | git am
popd

read -p "Press ENTER..."

#init.rc: set initial cpuset to all cores
pushd system/core
git fetch https://review.lineageos.org/LineageOS/android_system_core refs/changes/32/169032/1 && git cherry-pick FETCH_HEAD
popd
