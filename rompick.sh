#!/bin/bash

. build/envsetup.sh

read -p "Press ENTER..."

pushd device/oneplus/oneplus3

# op3t: init: allow the gpu to drop to 133 MHz on idle on op3t/sd821.
wget https://github.com/nvertigo/android_device_oneplus_oneplus3t/commit/c18d31e22516e3b86140d47f94ca57832a7769d0.patch -O - | git am

# AAPT: adjust config to the physical abillities of 3t's display.
wget https://github.com/nvertigo/android_device_oneplus_oneplus3t/commit/a9ceb79571015653de8ed6f6556b159def479c5c

# op3: Indicate that this device has Dash Charge.
# wget https://github.com/nvertigo/android_device_oneplus_oneplus3t/commit/ac9f9e97d295696564018370e6aee29e0d24aad1

# op3t: gps: XTRA: use https and check for version 3
wget https://github.com/nvertigo/android_device_oneplus_oneplus3t/commit/902b33cdf10d96ee8f6a14aeaef70d4b11859186

# op3/t: sepolicy: allow substratum to find overlay manager
wget https://github.com/nvertigo/android_device_oneplus_oneplus3t/commit/ab05f339b1ec3089c81d66af7d7abc08d70e6d2a

# op3/t: sepolicy: allow service managers to be found
wget https://github.com/nvertigo/android_device_oneplus_oneplus3t/commit/b5821376aa693e1a8d38d370cc284afc6789e9ee

# op3/t: sepolicy: allow some early fingerprint hal denials
wget https://github.com/nvertigo/android_device_oneplus_oneplus3t/commit/f8ad85155c98cef8075ff1c090e2f0b1c7f5ba04

# op3/t: sepolicy: fix some dinials
wget https://github.com/nvertigo/android_device_oneplus_oneplus3t/commit/7ef55f2d6ef8b244cf7e841dacd78804ba00d8e7

# op3/t: sepolicy: allow system apps to call wificond:binder
wget https://github.com/nvertigo/android_device_oneplus_oneplus3t/commit/001ca7122e5fc7925395ba807f71eadf08e42fe6

# op3: Build LiveDisplay HAL (Patchset 7)
wget https://github.com/nvertigo/android_device_oneplus_oneplus3t/commit/f005dd6ff6e73bb57c19dba0a3e5d7e9d1212673

# op3/t: cosmetics: remove executable bit from init.qcom.usb.rc and init.target.rc
wget https://github.com/nvertigo/android_device_oneplus_oneplus3t/commit/9e254ee78aa2b3ef72c3c58406339f9d28b9841f

# op3/t: overlay: Make "Turn on WiFi Automatically" available
wget https://github.com/nvertigo/android_device_oneplus_oneplus3t/commit/92d1e1fbd4646ecf977682a37b698123855b45a8

popd

read -p "Press ENTER..."
