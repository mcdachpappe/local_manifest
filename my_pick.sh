#!/bin/bash

. build/envsetup.sh

read -p "Press ENTER..."

# some addons [1/2]
# Allow to quickly open Running Services from notification/qs panel [1/2]
pushd frameworks/base
wget https://github.com/mcdachpappe/android_frameworks_base/commit/47428088ba3a06deb5bff005ebba8636a584db2b.patch -O - | git am
wget https://github.com/mcdachpappe/android_frameworks_base/commit/0ec584d62ea2d9addf3c71341d44dfc7e5b793e4.patch -O - | git am
popd

read -p "Press ENTER..."

# some addons [2/2]
# Allow to quickly open Running Services from notification/qs panel [2/2]
pushd packages/apps/Settings
wget https://github.com/mcdachpappe/android_packages_apps_Settings/commit/3c0e74de31336d3c56492205f8461756abca58cd.patch -O - | git am
wget https://github.com/mcdachpappe/android_packages_apps_Settings/commit/f4644adc314d060f2297dc05804b0d0051a0cfac.patch -O - | git am
popd

read -p "Press ENTER..."

# revert: Nlos commits
pushd vendor/cm
wget https://github.com/mcdachpappe/android_vendor_cm/commit/545ee649df9eb06b880468b3ce7afaa0e789cc5a.patch -O - | git am
popd

read -p "Press ENTER..."

# revert: remove perf-profile[1-6].conf
pushd vendor/oneplus
wget https://github.com/mcdachpappe/proprietary_vendor_oneplus/commit/b2fa9bc752acd86da9a17e247667f4065164e880.patch -O - | git am
popd

read -p "Press ENTER..."

# Notification slider: add extra options
pushd device/oppo/common
wget https://github.com/mcdachpappe/android_device_oppo_common/commit/0dc1b9c7ff1b236d03c7fa0629e432082d2736a4.patch -O - | git am
popd

read -p "Press ENTER..."

# sepolicy: allow ViPER4Android in enforcing mode
pushd system/sepolicy
wget https://github.com/mcdachpappe/android_system_sepolicy/commit/f3699c7d3a27a9f2c992f91ca9af2a658375a68e.patch -O - | git am
popd 

read -p "Press ENTER..."

