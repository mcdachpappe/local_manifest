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

# op3: Indicate Dash Charge
# wget https://github.com/mcdachpappe/android_device_oneplus_oneplus3-rr/commit/f2767c79c55faef625ba2c30cf9ab72429925f1c.patch -O - | git am

# op3: enable Smart Pixels
# wget https://github.com/mcdachpappe/android_device_oneplus_oneplus3-rr/commit/ba350d1f2e021a9524ac93eea94f47bd30871d73.patch -O - | git am

# qcom.power.rc: changes to match init.caesium.rc
# wget https://github.com/mcdachpappe/android_device_oneplus_oneplus3-rr/commit/ae72366509ffa8f6c44087d2b3fa46f1476a474a.patch -O - | git am

# op3: update oneplus apps
# wget https://github.com/mcdachpappe/android_device_oneplus_oneplus3-rr/commit/216b5719adaeded95b7a9ced666ff81c3eb3b545.patch -O - | git am

# revert: op3t: update build fingerprint to ob26.
# wget https://github.com/mcdachpappe/android_device_oneplus_oneplus3-rr/commit/6945277ea31f4977196042839336eef9b7e1052c.patch -O - | git am

# op3/t: add jelly back
# wget https://github.com/mcdachpappe/android_device_oneplus_oneplus3-rr/commit/95fb4695effefc777572a3423a1da613c5c1a1f0.patch -O - | git am

# op3: liblights: Calculate brightness ramp automatically on init
# wget https://github.com/mcdachpappe/android_device_oneplus_oneplus3-rr/commit/6331c1a2db17d6901795d959ce28e1c5726afd4e.patch -O - | git am

# init.qcom.power.rc: some tweaks
# wget https://github.com/mcdachpappe/android_device_oneplus_oneplus3-rr/commit/8363d85199012c32c456ecc35425b3c328df4102.patch -O - | git am

# op3/t: add los weatherproviders
# wget https://github.com/mcdachpappe/android_device_oneplus_oneplus3-rr/commit/1c7627d7306a75b4e3b80e1f4ed0a5472a9e87a2.patch -O - | git am

# op3/t: Revert: Build with SDCLANG
# wget https://github.com/mcdachpappe/android_device_oneplus_oneplus3-rr/commit/045f682efe0e58cd2bfaa761d4999ae89af45c13.patch -O - | git am

# op3/t: Make Rounded Corner Overlay Based
# wget https://github.com/mcdachpappe/android_device_oneplus_oneplus3-rr/commit/761240156a55670038f3ce1e0ad3c0f970cb895a.patch -O - | git am

# op3/t: install Gallery2 as non-privileged apk.
# wget https://github.com/mcdachpappe/android_device_oneplus_oneplus3-rr/commit/bcafc778cbcb66553ea76f8f7a4806432194c324.patch -O - | git am

# Revert to ob28 build fingerprint and build description
# wget https://github.com/mcdachpappe/android_device_oneplus_oneplus3-rr/commit/d317697c869e7a15a2ec8c33be6f2968f3642c1a.patch -O - | git am

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

# popd

##

# pushd packages/apps/LineageParts

# Battery light 'really full' option [2/2]
# wget https://github.com/mcdachpappe/packages_apps_LineageParts/commit/51647c8a2bbefab35a6233a5deb1083230ded269.patch -O - | git am

# popd

##

# pushd packages/apps/Settings

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
# wget https://github.com/mcdachpappe/Resurrection_packages_apps_Settings/commit/3baddec08f6f14ba00aa1978a5ddab16c64b1142.patch -O - | git am

# Allow to disable the Wallpaper tint [2/2]
# wget https://github.com/mcdachpappe/Resurrection_packages_apps_Settings/commit/00f5f892573de1fd4181a734fc19f7c3caa0f953.patch -O - | git am

# Introduce lockscreen clock/date styles [2/2]
# wget https://github.com/mcdachpappe/Resurrection_packages_apps_Settings/commit/89137a6251eb35a677d4ee2639f1c33ea4f4f519.patch -O - | git am

# settings: [SQUASH] Lockscreen customization [2/2]
# wget https://github.com/mcdachpappe/Resurrection_packages_apps_Settings/commit/2c37a4f47f0ed619e0f29429593f0ac14ffdf4ff.patch -O - | git am

# Reset battery stats [2/2]
# wget https://github.com/mcdachpappe/Resurrection_packages_apps_Settings/commit/9047e106eaa90a20331c93f1d84ab073ea8a32eb.patch -O - | git am

# settings: add icons for wakelock- & alarmsblocker
# wget https://github.com/mcdachpappe/Resurrection_packages_apps_Settings/commit/469036f9957a6fb1619c00e2646a3bfbc96ab4a0.patch -O - | git am

# Limit Lock Clock Max Size to 90dp. ##
# wget https://github.com/mcdachpappe/Resurrection_packages_apps_Settings/commit/beecee5137dc08c3fe8ac744ce8c3c233b65df94.patch -O - | git am

# [SQUASH] Allow using framework values for rounded corners [2/2]
# wget https://github.com/mcdachpappe/Resurrection_packages_apps_Settings/commit/d326c0a114af89113355106aa676465cb0519923.patch -O - | git am

# OmniEvents: revert some wifi options
# wget https://github.com/mcdachpappe/Resurrection_packages_apps_Settings/commit/693d3bbf23e62d83a223e98b58ad7347e75df230.patch -O - | git am

# popd

##

# pushd frameworks/base

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

# base: add CPU info overlay and longpress toggle
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/5e28205b681c681e51511af84a54d6829a52dd39.patch -O - | git am

# Allow to disable the Wallpaper tint [1/2]
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/25ccb2a636026c138dec2b7deaccc58aca36d0f2.patch -O - | git am

# Introduce lockscreen clock/date styles [1/2]
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/65f20a7cf12ae91560203d1d248efc3c44ffc904.patch -O - | git am

# base: [SQUASH] Lockscreen customization [1/2]
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/ef52c1f2b3cf59b92c45021de6c9856c3d843aa9.patch -O - | git am

# base: Lockscreen customization fixes
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/0ddb636ebc44abc033a70a654ed52385dcddf869.patch -O - | git am

# SystemUI: Added animation of switching between the power menu
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/79cec94a3241c903d099ca28f64a2496f31e6779.patch -O - | git am

# Reset battery stats [1/2]
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/9ad628261e5adf5775e5ad5653c6ff3f16a6d9b1.patch -O - | git am

# DefaultPermissions: Add permissions for Google Markup
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/cb208f3eac40b63146be3bed6fc1a6c42d7badb4.patch -O - | git am

# Adding optimization to reduce callbacks to TextClock
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/98c27f6d654e5148c86374d06a5a2bb5f349b53a.patch -O - | git am

# fixes for lockscreen clock/date styles
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/9ee114d550f5628ed634128fe83bd558a5d09033.patch -O - | git am

# Lockscreen clock styles: update alarm status also if ambient is off
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/c7fd7b367d4d67967ff0df303ae7d17a4e07cc02.patch -O - | git am

# Allow for the 'Big Clock' analog padding to be changed per device
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/63ed4e927723275786234d97194bbe9213c0e1ff.patch -O - | git am

# Add a slight tint to the power menu when wallpaper tint is off
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/eb747112f52232fdfe5acbc175561059560c0c4f.patch -O - | git am

# Blockers: Add some annoying wakelock and alarms
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/9bd8063b83ca078f8a1dd24449005ad37a0720db.patch -O - | git am

# lockscreen : Align sammy style to center
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/25e25d98a6537a6d6c30f1defaa9ec44a8a77dc2.patch -O - | git am

# lockscreen : differentiate hour from minutes in digital bold style clock
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/13a9702da5040ddfdc362485438371f160fbf820.patch -O - | git am

# Ensure the clockview is aligned correctly each time
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/fbc35c64544a4e18912d6b4f002f1da2a57e2593.patch -O - | git am

# Work smarter not harder 
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/8718cdfa2d392445b770e5721d700b6cfc473949.patch -O - | git am

# Fix LockClock Size for once n all
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/47e5e08c937613421994f65e4cb9d5728d50616c.patch -O - | git am

# Kill some lockscreen related animations
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/d58189267696844b7dafa3c73a66527da392bbfe.patch -O - | git am

# Allow using framework values for rounded corners [1/2]
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/5c3c11f5c99db374043396e05ebf2670c72530c1.patch -O - | git am

# Make Rounded Corner Overlay Based
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/f8c5d6e3870a2316b7b07ad9eb1a35362c70fae1.patch -O - | git am

# fingerprint: Speed up wake-and-unlock scenario
# wget https://github.com/mcdachpappe/android_frameworks_base-rr/commit/9180698043c95ef5b84295d2c6b0a8d84cae324a.patch -O - | git am

# popd

##

# pushd frameworks/av

# services: audioflinger: Threads: increase max tracks per uid
# wget https://github.com/mcdachpappe/android_frameworks_av/commit/50944dc4bd59406295a951817c3811476c2e254c.patch -O - | git am

# camera: Fix high battery drain after using flashlight
# wget https://github.com/mcdachpappe/android_frameworks_av/commit/8328166bfb2f3a23ae2bab9d13a499625fac3e8f.patch -O - | git am

# op3: Set camera package name to OnePlus Camera
# wget https://github.com/mcdachpappe/android_frameworks_av/commit/0d03e75c8bfced873209fc875310bd23f38ce203.patch -O - | git am

# FAV: Add the needed stuffs for OnePlusCamera to work
# wget https://github.com/mcdachpappe/android_frameworks_av/commit/e3aacfe6df7cc8ebe9b76dc6cccd6173b0233c2f.patch -O - | git am

# CameraService: Fix deadlock in binder death cleanup.
# wget https://github.com/Rebase-havoc/android_frameworks_av/commit/6592b353c30ca305435d74467a85d420643bbc82.patch -O - | git am

# CamcorderProfiles: Add new camcorder profiles
# wget https://github.com/Rebase-havoc/android_frameworks_av/commit/e062f47f1ae95eb6fdad089e3af146816827b00d.patch -O - | git am

# Enable Wifi Display to support 1920*1080 60fps
# wget https://github.com/Rebase-havoc/android_frameworks_av/commit/7d1945a1fd5b5b51bc60a40f292876d6a86f4024.patch -O - | git am

# DL policy request through Binder
# wget https://github.com/Rebase-havoc/android_frameworks_av/commit/ff8c3785ae97d58cd057c1aeb1529502442b421e.patch -O - | git am

# Single thread exclusive to DL
# wget https://github.com/Rebase-havoc/android_frameworks_av/commit/d6483ba3d3734d1e4a5020ec59aa705b4db2973a.patch -O - | git am

# popd

##

# pushd frameworks/native

# Fix resampling for multiple pointers
# wget https://github.com/mcdachpappe/frameworks_native/commit/5218ed26c5130cf796ad732302fc1e51a7819d04.patch -O - | git am

# Add screen stabilization
# wget https://github.com/Rebase-havoc/android_frameworks_native/commit/9ed1e1ac814f74729e760b60a1d314265b8a5404.patch -O - | git am

# Input: improve touch response slightly
# wget https://github.com/Rebase-havoc/android_frameworks_native/commit/4c3a6fc8e926537f5c01258c610fa466075aa7d5.patch -O - | git am

# surfaceflinger: fix fencing when layers become invisible
# wget https://github.com/Rebase-havoc/android_frameworks_native/commit/9c595fa7ac2b5be5086b6bbc339035ad5098eb45.patch -O - | git am

# surfaceflinger: fix fencing when composition mode switches
# wget https://github.com/Rebase-havoc/android_frameworks_native/commit/e51f6dfcf48ee2ed38634a3faea65923a2e02e45.patch -O - | git am

# Use sourceCrop to decide filtering in screenshots
# wget https://github.com/Rebase-havoc/android_frameworks_native/commit/83489687db482aa96f39bfaf0732a7a173e0e36b.patch -O - | git am

# surfaceflinger: fix static analyzer complaints
# wget https://github.com/Rebase-havoc/android_frameworks_native/commit/4674360e06658b3d23aae86ac707238afd2f97c1.patch -O - | git am

# DL policy extension for SchedulingPolicyService
# wget https://github.com/Rebase-havoc/android_frameworks_native/commit/8c6546de91b5fe257ffa37b29d627aedc95ea9a2.patch -O - | git am

# SurfaceFlinger: Remove size check in captureScreen
# wget https://github.com/Rebase-havoc/android_frameworks_native/commit/3ed761b9d4148abb26b9be78c28d6591e170a3f1.patch -O - | git am

# SurfaceFlinger: Use actual hw width and height to capture screen
# wget https://github.com/Rebase-havoc/android_frameworks_native/commit/edab3051e91f58a273a4de6fbbdab97012f18282.patch -O - | git am

# surfaceflinger: Fix egl GL_OUT_OF_MEMORY and EGL_BAD_ALLOC bug
# wget https://github.com/Rebase-havoc/android_frameworks_native/commit/ddbbeec693fae1dbd6170d7afb5ab59a4d24f313.patch -O - | git am

# popd

##

# pushd vendor/rr

# Set seclabel for service sysinit to sudeamon
# wget https://github.com/mcdachpappe/packages_apps_LineageParts/commit/51647c8a2bbefab35a6233a5deb1083230ded269.patch -O - | git am

# rr: switch to launcher3 (bootleggers)
# wget https://github.com/mcdachpappe/android_vendor_resurrection/commit/d624cefc56f8f64afdc5deb11d6c1ff416a8c78d.patch -O - | git am

# vendor_rr: Add some fonts
# wget https://github.com/mcdachpappe/android_vendor_resurrection/commit/d4f2dd60c162d8458eb543f9b54500de966094ba.patch -O - | git am

# vendor_rr_prebuild: add some google apps
# wget https://github.com/mcdachpappe/android_vendor_resurrection/commit/be8a09828fb6355ed9dad8013b737930e6d8a56b.patch -O - | git am

# vendor_rr: add complete 'GoogleSans' font family
# wget https://github.com/mcdachpappe/android_vendor_resurrection/commit/9512fd7b586712821fdbcc1617405e98ab3a26f5.patch -O - | git am

# repopick: Update SSH queries result to match HTTP queries
# wget https://github.com/mcdachpappe/android_vendor_resurrection/commit/20d7353b5b22c7cd324e987c4093db2d01239b5f.patch -O - | git am

# lineage: qcom: Set thermal & vr HAL pathmaps
# wget https://github.com/mcdachpappe/android_vendor_resurrection/commit/7e36b92db7a3942620c108b3bbf94333969fdd5f.patch -O - | git am

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
# end of rom picks
##
