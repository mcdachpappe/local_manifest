#!/bin/bash

. build/envsetup.sh

read -p "Press ENTER..."



read -p "Press ENTER..."

# revert: remove perf-profile[1-6].conf
pushd vendor/oneplus
wget https://github.com/mcdachpappe/proprietary_vendor_oneplus/commit/b2fa9bc752acd86da9a17e247667f4065164e880.patch -O - | git am
popd


read -p "Press ENTER..."

#Notification slider: add extra options
pushd device/oppo/common
wget https://github.com/mcdachpappe/android_device_oppo_common/commit/0dc1b9c7ff1b236d03c7fa0629e432082d2736a4.patch -O - | git am
popd

read -p "Press ENTER..."

