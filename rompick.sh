#!/bin/bash

pushd build/make

# build: debloat a bit
wget https://github.com/mcdachpappe/android_build-msmx/commit/8c73d9761b11e7d7cb23af0eb3fba6334dbb34f0.patch -O - | git am

popd

##########################


pushd device/oneplus/oneplus3

# op3/t: adjust config to the physical abillities of 3t's display
# wget https://github.com/mcdachpappe/android_device_oneplus_oneplus3-msmx/commit/fa13baca49def3da9644191563d8800f21d68c85.patch -O - | git am
wget https://github.com/mcdachpappe/android_device_oneplus_oneplus3-msmx/commit/b8deb033e31002d18e419e73ccffcd561940eee4.patch -O - | git am

# op3/t: Sync to LOS sourcecode
# wget https://github.com/mcdachpappe/android_device_oneplus_oneplus3-msmx/commit/ff4faf217939fba9e9f46ec50b0d10736c4fd1d8.patch -O - | git am

# op3/t: fix the sepolicy [1/3]
# wget https://github.com/mcdachpappe/android_device_oneplus_oneplus3-msmx/commit/6a78cec96e1c247e6a03ac736402709eef3bf91b.patch -O - | git am

# op3/t: fix denies for mtp_hack
# wget https://github.com/mcdachpappe/android_device_oneplus_oneplus3-msmx/commit/9a26b5ad056c055e4aa5aaf5fb1a8881a31d45cb.patch -O - | git am

# updated ramdisk
wget https://github.com/SuperDroidBond/device_oneplus3/commit/32c741034146cd9cc44f3a8182c70033d6d3d998.patch -O - | git am

# qcom.power: disable prediction
wget https://github.com/mcdachpappe/android_device_oneplus_oneplus3-msmx/commit/7146ed40066d5ca9837aa322aeee9bcab8bef518.patch -O - | git am

popd

##########################


# pushd frameworks/base

# base: Privacy Guard for O [AOSP] [1/3]
# wget https://github.com/mcdachpappe/android_frameworks_base-msmx/commit/778d878c1c2ab0b582fee4f3e7197f1cd5ca2c3c.patch -O - | git am

# base: Make dem animations faster
# wget https://github.com/mcdachpappe/android_frameworks_base-msmx/commit/ce3f786540fb712f7c24da8864e53651fad459da.patch -O - | git am

# base: SystemUI: dont hide qs bottom separator
# wget https://github.com/mcdachpappe/android_frameworks_base-msmx/commit/4d2e6e861f4051943de18f845f196bac38b906a4.patch -O - | git am

# base: SystemUI: dont set bg at all for security footer
# wget https://github.com/mcdachpappe/android_frameworks_base-msmx/commit/c9d8d1f044b4fe4613d6de139e106acb72fee2ce.patch -O - | git am

# base: Add more Apps to SensorOptimizationList
# wget https://github.com/mcdachpappe/android_frameworks_base-msmx/commit/8be863cec874ea05a268b25b5c91248e60812908.patch -O - | git am

# base: fix for mtp
# wget https://github.com/mcdachpappe/android_frameworks_base-msmx/commit/773b0a3141f577c7fb1ae191fde091b00be156a4.patch -O - | git am

# popd

##########################


# pushd packages/apps/Settings

# settings: Privacy Guard for O [AOSP] [3/3]
# wget https://github.com/mcdachpappe/android_packages_apps_Settings-msmx/commit/07da8cdbee69c6a127bd5baea1678b067cff0e24.patch -O - | git am

# popd

##########################


# pushd frameworks/native

# native: Privacy Guard for O [AOSP] [2/3]
# wget https://github.com/mcdachpappe/android_frameworks_native-msmx/commit/4fc5dfc5cfe819dd1015620a49513725c8e1efa5.patch -O - | git am

# popd

##########################

# pushd vendor/xtended



# popd

#########################

# pushd packages/apps/Xtensions

# OmniEvents: fix after commit 8d2091f
# wget https://github.com/Project-Xtended/packages_apps_Xtensions/commit/0c442a9943341fb891f345f2084011c6581e22a6.patch -O - | git am

# OmniEvents: final fix
# wget https://github.com/mcdachpappe/packages_apps_Xtensions/commit/0343fb72255c0887f684dc4056a08d01c4c3ef54.patch -O - | git am

# xtensions: add mtp_hack again
# wget https://github.com/mcdachpappe/packages_apps_Xtensions/commit/0613c06c18dd8805750f9dd63c8c460864a90f03.patch -O - | git am

# xtensions: add german translation
# wget https://github.com/mcdachpappe/packages_apps_Xtensions/commit/a6849bec750eaa026a4ab7bafb3d53ee1b5327ae.patch -O - | git am

# popd

#########################

# pushd device/qcom/sepolicy

# device/qcom/sepolicy: fix the sepolicy [3/3]
# wget https://github.com/mcdachpappe/android_device_qcom_sepolicy-msmx/commit/a296d9fa04ed4030febffd16eb4f389cfe39c48b.patch -O - | git am

# popd

#########################

# pushd system/sepolicy

# system/sepolicy: fixing sepolicy [2/3]
# wget https://github.com/mcdachpappe/android_system_sepolicy-msmx/commit/90b093b6ecabd8d82cd3474a0d33a17aebdd9c65.patch -O - | git am

# system/sepolicy: fix mtp_hack
# wget https://github.com/mcdachpappe/android_system_sepolicy-msmx/commit/1d1b9b6c6a1a89c6771bbcd1415700baeeacdc26.patch -O - | git am

# system/sepolicy: fix memtrack denials
# wget https://github.com/mcdachpappe/android_system_sepolicy-msmx/commit/1d7f213ffbc234a5c7336e201ac0ccca6b904d0f.patch -O - | git am

# popd

##
# end of rom picks
##
