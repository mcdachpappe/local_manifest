#!/bin/bash

# pushd device/oneplus/oneplus3

# op3/t: init.qcom.power: cosmetics and fixes
wget https://github.com/mcdachpappe/android_device_oneplus_oneplus3-msmx/commit/7b037daf15b8db11cd41517f22172e107ad22a7c.patch -O - | git am

# popd

##
# end of device picks
##

pushd frameworks/base

# base: Privacy Guard for O [AOSP] [1/3]
wget https://github.com/mcdachpappe/frameworks_base-msmx/commit/f8d6f2b629b235c66d60936b697ccb6d57738563.patch -O - | git am

popd

##
# end of base picks
##

pushd packages/apps/Settings

# settings: Privacy Guard for O [AOSP] [3/3]
wget https://github.com/mcdachpappe/packages_apps_Settings-msmx/commit/93fe69938dbdb979d9e319fa68cebac92cfd5b37.patch -O - | git am

popd

##
# end of Settings picks
##

pushd frameworks/native

# native: Privacy Guard for O [AOSP] [2/3]
wget https://github.com/mcdachpappe/frameworks_native-msmx/commit/4fc5dfc5cfe819dd1015620a49513725c8e1efa5.patch -O - | git am

popd

##
# end of native picks
##

##
# end of rom picks
##
