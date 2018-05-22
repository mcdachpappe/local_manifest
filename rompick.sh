#!/bin/bash

# pushd device/oneplus/oneplus3

# oneplus3: RR bringup
# wget https://github.com/ResurrectionRemix-Devices/device_oneplus_oneplus3/commit/914efb41c6604369de8ac8b8fc2f916c5a05f86c.patch -O - | git am

# oneplus3: enable hw keys settings and button backlight
# wget https://github.com/ResurrectionRemix-Devices/device_oneplus_oneplus3/commit/4bdb37967edf7c0e8923afdbc851de5072b81b46.patch -O - | git am

# oneplus3: update dependencies
# wget https://github.com/ResurrectionRemix-Devices/device_oneplus_oneplus3/commit/56dd31033b8464fa51c783c3b8b647ef999eb93d.patch -O - | git am

# Revert "op3: Re-enable variable button brightness"
# wget https://github.com/ResurrectionRemix-Devices/device_oneplus_oneplus3/commit/f23fe14f93447f67257f2282cafd2b4a77d9da90.patch -O - | git am

# op3t: init: allow the gpu to drop to 133 MHz on idle on op3t/sd821
# wget https://github.com/nvertigo/android_device_oneplus_oneplus3t/commit/c18d31e22516e3b86140d47f94ca57832a7769d0.patch -O - | git am

# AAPT: adjust config to the physical abillities of 3t's display
# wget https://github.com/nvertigo/android_device_oneplus_oneplus3t/commit/a9ceb79571015653de8ed6f6556b159def479c5c.patch -O - | git am

# op3t: gps: XTRA: use https and check for version 3
# wget https://github.com/nvertigo/android_device_oneplus_oneplus3t/commit/902b33cdf10d96ee8f6a14aeaef70d4b11859186.patch -O - | git am

# op3/t: sepolicy: allow substratum to find overlay manager
# wget https://github.com/nvertigo/android_device_oneplus_oneplus3t/commit/ab05f339b1ec3089c81d66af7d7abc08d70e6d2a.patch -O - | git am

# op3/t: sepolicy: allow service managers to be found
# wget https://github.com/nvertigo/android_device_oneplus_oneplus3t/commit/b5821376aa693e1a8d38d370cc284afc6789e9ee.patch -O - | git am

# op3/t: sepolicy: fix some dinials
# wget https://github.com/nvertigo/android_device_oneplus_oneplus3t/commit/7ef55f2d6ef8b244cf7e841dacd78804ba00d8e7.patch -O - | git am

# op3/t: sepolicy: allow system apps to call wificond:binder
# wget https://github.com/nvertigo/android_device_oneplus_oneplus3t/commit/001ca7122e5fc7925395ba807f71eadf08e42fe6.patch -O - | git am

# op3/t: cosmetics: remove executable bit from init.qcom.usb.rc and init.target.rc
# wget https://github.com/nvertigo/android_device_oneplus_oneplus3t/commit/9e254ee78aa2b3ef72c3c58406339f9d28b9841f.patch -O - | git am

# op3/t: blobs: allow extracting from only op3t rom without breaking blobs for op3
# wget https://github.com/nvertigo/android_device_oneplus_oneplus3t/commit/114cb04a980f78549f3df7bb19a8962771936c10.patch -O - | git am

# BoardConfig: use gcc 7.3.1 for caesium kernel
# wget https://github.com/mcdachpappe/android_device_oneplus_oneplus3-rr/commit/f42cd5600654e966937e6c922cff35aa3bf30ebd.patch -O - | git am

# Add rounded corners in UI and Recents
# wget https://github.com/mcdachpappe/android_device_oneplus_oneplus3-rr/commit/234a0857b7a141276b47f2c237eed32081ee9095.patch -O - | git am

# prop: Add Google DNS
# wget https://github.com/mcdachpappe/android_device_oneplus_oneplus3-rr/commit/2bfd89c868ad6a9df671a6e7a14322f4f71d7969.patch -O - | git am

# op3: add oneplus camera and gallery
# wget https://github.com/mcdachpappe/android_device_oneplus_oneplus3-rr/commit/227f8243d574b704fbc54b73cc730500aab6c4c7.patch -O - | git am

# op3: Add HFR/HSR profiles
# wget https://github.com/LineageOS/android_device_oneplus_oneplus3/commit/ae7a1a920135776ed1a9b9dca638240d8a43693d.patch -O - | git am

# oneplus3: dependencies: track own oppo/common
# wget https://github.com/mcdachpappe/android_device_oneplus_oneplus3-rr/commit/4e6912abc37d12b37c9cd4c7bdfa9b6dfcf57a2e.patch -O - | git am

# op3t: update build fingerprint to ob25.
# wget https://github.com/nvertigo/android_device_oneplus_oneplus3t/commit/3d8a70cc6ded6c6bdf98fe01f1baec46cb4b8148.patch -O - | git am

# op3: Indicate Dash Charge
# wget https://github.com/mcdachpappe/android_device_oneplus_oneplus3-rr/commit/f2767c79c55faef625ba2c30cf9ab72429925f1c.patch -O - | git am

# op3: enable Smart Pixels
# wget https://github.com/mcdachpappe/android_device_oneplus_oneplus3-rr/commit/ba350d1f2e021a9524ac93eea94f47bd30871d73.patch -O - | git am

# op3t: update build fingerprint to ob26.
# wget https://github.com/nvertigo/android_device_oneplus_oneplus3t/commit/5927c3da391efd8bcf51faae8b7ebabf0f93eb7e.patch -O - | git am

# op3/t: prop: add missing ims lines for volte
# wget https://github.com/mcdachpappe/android_device_oneplus_oneplus3-rr/commit/a2fffffb17c7fde593b8a0c020ee85640a70bf3e.patch -O - | git am

# op3/t: control High Brightness Mode [3/3]
# wget https://github.com/mcdachpappe/android_device_oneplus_oneplus3-rr/commit/6d81d24373ead925e8756f76cde16f24d797b944.patch -O - | git am

# popd

##

# pushd device/oppo/common

# Notification slider: add extra options
# wget https://github.com/mcdachpappe/android_device_oppo_common/commit/3df17a191393944eca335fd7a16d8404947726b6.patch -O - | git am

# popd

##

# pushd lineage-sdk

# Battery light 'really full' option [1/2]
# wget https://github.com/mcdachpappe/lineage-sdk/commit/dc71153648bbcfdbf74af744ea6c30aa0069ef98.patch -O - | git am

# lineage-sdk: Switch back to AOSP TwilightService
wget https://github.com/LineageOS/android_lineage-sdk/commit/cac65b89721188e9873b0572b32b13bec81f0d76.patch -O - | git am

# popd

##

# pushd packages/apps/LineageParts

# Battery light 'really full' option [2/2]
# wget https://github.com/mcdachpappe/packages_apps_LineageParts/commit/51647c8a2bbefab35a6233a5deb1083230ded269.patch -O - | git am

# popd

##

pushd packages/apps/Settings

# [SQUASH] Allow to customize notification led light [2/2]
# wget https://github.com/mcdachpappe/Resurrection_packages_apps_Settings/commit/05c115463c6bfa5186735a5f6266531323cde0db.patch -O - | git am

# [SQUASH] WakelockBlocker [2/2] & AlarmsBlocker [2/2]
# wget https://github.com/mcdachpappe/Resurrection_packages_apps_Settings/commit/298698ae54ed37a14985d6e0db6fac0e72a803c5.patch -O - | git am

# [SQUASH] HeadsUp: add timeout option [2/2] & HeadsUp: snooze function [2/2]
# wget https://github.com/mcdachpappe/Resurrection_packages_apps_Settings/commit/e1f54fcdadddb1e05b312a4fd89629470992d805.patch -O - | git am

# Less Notification sounds: add a few more values
# wget https://github.com/mcdachpappe/Resurrection_packages_apps_Settings/commit/2e34698dc9aede5482117bebfce0f89359543465.patch -O - | git am

# USB: Transfer Files as Default [2/2]
# wget https://github.com/mcdachpappe/Resurrection_packages_apps_Settings/commit/1fd8a151a43a1371b8e2025eb40517587a4521a0.patch -O - | git am

# Themes: Fix BT pair dialog
# wget https://github.com/mcdachpappe/Resurrection_packages_apps_Settings/commit/d130842e2c56e0a780c1889c06996e7e3b33c170.patch -O - | git am

# [SQUASH] Settings: add system event service
# wget https://github.com/mcdachpappe/Resurrection_packages_apps_Settings/commit/41b620b1c7e9aa59c45b8016ff6661f5c2f83d0b.patch -O - | git am

popd

##

pushd frameworks/base

# [SQUASH] Allow to customize notification led light [1/2]
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/33045ba972e6d5642b0c8e134f6c1090666726de.patch -O - | git am

# [SQUASH] WakelockBlocker [1/2] & AlarmsBlocker [1/2]
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/c1d57ba98a3f5d7a9698b8929370691c1a24a781.patch -O - | git am

# [SQUASH] HeadsUp: timeout option [1/2] & HeadsUp: snooze function [1/2]
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/bad6f80b6f5835c4d218f2b0ce6e65e0c868a439.patch -O - | git am

# Add more Apps to SensorOptimizationList
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/085b25b241c3132fc53521be617ccfb93f8ce99d.patch -O - | git am

# Add signature Spoofing permission
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/059c36cd84732c74f6db0fbd6d69f74b094c0235.patch -O - | git am

# Allow location providers also outside of /system.
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/2bb2f16ff14dbfb97eaa3a1553eec8d989ed8b23.patch -O - | git am

# USB: Transfer Files as Default [1/2]
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/f4422e68503616236691f64a3eabc18dc19599bd.patch -O - | git am

# base: Fix OnePlusCamera HDR mode
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/d6d5c697a3d730a39f38cf75468c842fb7fef3f7.patch -O - | git am

# base: SystemUI: dont hide qs bottom separator
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/b80cb190a18a92257e26490b6f204f186773772e.patch -O - | git am

# base: SystemUI: dont set bg at all for security footer
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/eae4f7819e5f0f5c2c5878a09d06b23898852373.patch -O - | git am

# themes: Add notification theming support
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/fc1c7eae5190729e882baecb1b98a564132b72b3.patch -O - | git am

# base: control High Brightness Mode [1/3]
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/70b80dc6ab1d2c285e0e7be139b11fedcb49391e.patch -O - | git am

# base: add CPU info overlay and longpress toggle
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/5e28205b681c681e51511af84a54d6829a52dd39.patch -O - | git am

popd

##

# pushd frameworks/av

# services: audioflinger: Threads: increase max tracks per uid
# wget https://github.com/mcdachpappe/android_frameworks_av/commit/50944dc4bd59406295a951817c3811476c2e254c.patch -O - | git am

# camera: Fix high battery drain after using flashlight
# wget https://github.com/mcdachpappe/android_frameworks_av/commit/8328166bfb2f3a23ae2bab9d13a499625fac3e8f.patch -O - | git am

# popd

##

# pushd frameworks/native

# Fix resampling for multiple pointers
# wget https://github.com/mcdachpappe/frameworks_native/commit/5218ed26c5130cf796ad732302fc1e51a7819d04.patch -O - | git am

# popd

##

# pushd vendor/oneplus

# op3/t: regenerate blobs from OxygenOS OpenBeta 23.
# wget https://github.com/nvertigo/proprietary_vendor_oneplus/commit/216a45e1b8318ba20308fbbbda3e3475e4701342.patch -O - | git am

# op3/t: regenerate blobs from OxygenOS OpenBeta 25.
# wget https://github.com/nvertigo/proprietary_vendor_oneplus/commit/a9141af938b9425b242e73ff14324032e7387ab1.patch -O - | git am

# op3/t: regenerate blobs from OxygenOS OpenBeta 26.
# wget https://github.com/nvertigo/proprietary_vendor_oneplus/commit/1b321095a2011ab501ddae894330978aa8c58e52.patch -O - | git am

# op3/t: regenerate blobs from OxygenOS OpenBeta 27.
# wget https://github.com/nvertigo/proprietary_vendor_oneplus/commit/7d764de69d9263011421ab699aa756545efc6d26.patch -O - | git am

# popd

##

# pushd vendor/rr

# Set seclabel for service sysinit to sudeamon
# wget https://github.com/mcdachpappe/packages_apps_LineageParts/commit/51647c8a2bbefab35a6233a5deb1083230ded269.patch -O - | git am

# rr: switch to launcher3 (bootleggers)
# wget https://github.com/mcdachpappe/android_vendor_resurrection/commit/d624cefc56f8f64afdc5deb11d6c1ff416a8c78d.patch -O - | git am

# popd

##

# pushd packages/overlays/Resurrection

# Black/Dark Theme: Support theming notificatons
# wget https://github.com/mcdachpappe/android_packages_overlays_Resurrection/commit/d995fd912fcc2f79fd902373cb3e29c2f5cdbc50.patch -O - | git am

# Black Theme: add missing styles
# wget https://github.com/mcdachpappe/android_packages_overlays_Resurrection/commit/f95ba2bcabb267ac859ad105417a8a60e4f180d1.patch -O - | git am

# popd

##

## pushd packages/apps/LockClock

# LockClock: Remove wakelock
# wget https://github.com/mcdachpappe/android_packages_apps_LockClock-rr/commit/26e406cdc17c600d911a0240a9ae83eeed546962.patch -O - | git am

# popd

##

# pushd hardware/qcom/power

# qcom_power: control High Brightness Mode [2/3]
# wget https://github.com/mcdachpappe/android_hardware_qcom_power-rr/commit/e21dfd87d4e83bc896dbb8bc7f337a23fad268c5.patch -O - | git am

# popd

##
# end of rom picks
##
