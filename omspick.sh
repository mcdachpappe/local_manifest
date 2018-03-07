#!/bin/bash

. build/envsetup.sh

read -p "Press ENTER..."

##
# oms
##

pushd build/make

# build: Introduce SubstratumService
wget https://github.com/nvertigo/android_build/commit/4f88299b9b2806339277e330628c605c4d785739.patch -O - | git am

popd

read -p "Press ENTER..."

##

pushd frameworks/base

# Extras: Add dynamic theme shutdown and boot animation support
wget https://github.com/nvertigo/android_frameworks_base/commit/0b2907faf81a31e04c3f768910ce3835aead6a35.patch -O - | git am

# Extras: Add dynamic theme sound effects support
wget https://github.com/nvertigo/android_frameworks_base/commit/33cec708353c0f7a7df570aa4e5810be83c202fd.patch -O - | git am

# ApplicationsState: add filter for Substratum overlays [2/2]
https://github.com/nvertigo/android_frameworks_base/commit/fe4933d56482c0393627a2900eb2b0504accf0dd.patch -O - | git am

# ThemeSafety: Introduce App Crash Intent
https://github.com/nvertigo/android_frameworks_base/commit/42229547086456050fae8d282d29406dac891c38.patch -O - | git am

# Hold "volume up" during boot to disable all overlays
https://github.com/nvertigo/android_frameworks_base/commit/c51a1e11b0967b7332c5058c7930e707957b2168.patch -O - | git am

# OMS: StrictMode and files under /data/system/theme/
https://github.com/nvertigo/android_frameworks_base/commit/53630d0909daad1e37fed4920ff6d2c6f1072698.patch -O - | git am

# base: Introduce SubstratumService
https://github.com/nvertigo/android_frameworks_base/commit/262afed6552754ed7b25e22070c695f0a838cd13.patch -O - | git am

# Extras: Add dynamic theme fonts support for O
https://github.com/nvertigo/android_frameworks_base/commit/36955f36721c0d7d8e42f12f47a91604bd81dd79.patch -O - | git am

# OMS: Add back overlay modified callback implementation
https://github.com/nvertigo/android_frameworks_base/commit/0ccbfc71adfee58c682906a977c16da5e8eecacb.patch -O - | git am

popd

read -p "Press ENTER..."

##

pushd packages/apps/settings

# Settings: Introduce Substratum changes.
wget https://github.com/nvertigo/android_packages_apps_Settings/commit/658f0f50070cde9c8ebc1ff5cd625c3954c9c4b4.patch -O - | git am

# Themes: Settings: Unlink Network & Internet and Wifi dashboard icon
wget https://github.com/nvertigo/android_packages_apps_Settings/commit/6d424608baea5aefe145759a5cb9bf44d10d7b5f.patch -O - | git am

# Themes: Settings: Expose storage icon colors
wget https://github.com/nvertigo/android_packages_apps_Settings/commit/ba6a7409f43fe513f3c01e227e0c898b38e0fc14.patch -O - | git am

# Themes: Settings: Expose storage summary text
wget https://github.com/nvertigo/android_packages_apps_Settings/commit/2daa240d3d95061652ebc5c9e59c17098908ef63.patch -O - | git am

# Themes: Settings: Expose switchbar background color
wget https://github.com/nvertigo/android_packages_apps_Settings/commit/dc4b0314b20c574f2f0fe609f276436a4a880d60.patch -O - | git am

# Themes: Settings: expose condition/suggestion colors for themes
wget https://github.com/nvertigo/android_packages_apps_Settings/commit/2d97938615b66f3173d2bb809bfcd61c60475dda.patch -O - | git am

# Themes: Settings: expose msim color picker text colors
wget https://github.com/nvertigo/android_packages_apps_Settings/commit/49e911d91a078b00d7749c2de7f9c5281790fa6a.patch -O - | git am

popd

read -p "Press ENTER..."

##
# end of oms picks
##
