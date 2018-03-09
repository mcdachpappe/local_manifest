#!/bin/bash

pushd device/oneplus/oneplus3

##
# nvertigo
##

# op3: Address ANT+ denial
wget https://github.com/nvertigo/android_device_oneplus_oneplus3t/commit/baa84c8f0a26077b1cfe7eac2ca1cb40a6a2768b.patch -O - | git am

# op3t: init: allow the gpu to drop to 133 MHz on idle on op3t/sd821
wget https://github.com/nvertigo/android_device_oneplus_oneplus3t/commit/c18d31e22516e3b86140d47f94ca57832a7769d0.patch -O - | git am

# AAPT: adjust config to the physical abillities of 3t's display
wget https://github.com/nvertigo/android_device_oneplus_oneplus3t/commit/a9ceb79571015653de8ed6f6556b159def479c5c.patch -O - | git am

# op3t: gps: XTRA: use https and check for version 3
wget https://github.com/nvertigo/android_device_oneplus_oneplus3t/commit/902b33cdf10d96ee8f6a14aeaef70d4b11859186.patch -O - | git am

# op3/t: sepolicy: allow substratum to find overlay manager
wget https://github.com/nvertigo/android_device_oneplus_oneplus3t/commit/ab05f339b1ec3089c81d66af7d7abc08d70e6d2a.patch -O - | git am

# op3/t: sepolicy: allow service managers to be found
wget https://github.com/nvertigo/android_device_oneplus_oneplus3t/commit/b5821376aa693e1a8d38d370cc284afc6789e9ee.patch -O - | git am

# op3/t: sepolicy: allow some early fingerprint hal denials
wget https://github.com/nvertigo/android_device_oneplus_oneplus3t/commit/f8ad85155c98cef8075ff1c090e2f0b1c7f5ba04.patch -O - | git am

# op3/t: sepolicy: fix some dinials
wget https://github.com/nvertigo/android_device_oneplus_oneplus3t/commit/7ef55f2d6ef8b244cf7e841dacd78804ba00d8e7.patch -O - | git am

# op3/t: sepolicy: allow system apps to call wificond:binder
wget https://github.com/nvertigo/android_device_oneplus_oneplus3t/commit/001ca7122e5fc7925395ba807f71eadf08e42fe6.patch -O - | git am

# op3/t: cosmetics: remove executable bit from init.qcom.usb.rc and init.target.rc
wget https://github.com/nvertigo/android_device_oneplus_oneplus3t/commit/9e254ee78aa2b3ef72c3c58406339f9d28b9841f.patch -O - | git am

##
# mcd
##

# BoardConfig: use gcc 7.3.1 for caesium kernel
wget https://github.com/mcdachpappe/rr_device_oneplus_oneplus3t/commit/f5cc9e28958327a2eac8e96a1f2c191bf7c946fb.patch -O - | git am

popd

##

pushd device/oppo/common

# Notification slider: add extra options
wget https://github.com/mcdachpappe/android_device_oppo_common/commit/5615905126d3ef21440e5d80a7f73bd29980dadc.patch -O - | git am

popd

##

pushd packages/apps/LineageParts

# Revert "LineageParts: Update the way OMS records details about overlays"
wget https://github.com/ResurrectionRemix/packages_apps_LineageParts/commit/a8dc4c4f6100a3c46d608ac44e247570aa45c628.patch -O - | git am

popd

##

pushd vendor/oneplus

# Add OnePlus 3/3T Front Camera Fix by defcomg
wget https://github.com/FraEgg/proprietary_vendor_oneplus/commit/5b271cd07aa2b085ef9246ad8479c5ad3fe33d46.patch -O - | git am

popd

##
# end of rom picks
##
