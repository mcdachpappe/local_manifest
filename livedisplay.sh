#!/bin/bash

##
# livedisplay
##

pushd android

# manifest: Remove LiveDisplay repo
wget https://github.com/LineageOS/android/commit/ad03f793574aa695f5a370c999d17dbede7f7aee.patch -O - | git am

popd

##

pushd device/oneplus/oneplus3

# op3: Build LiveDisplay HAL
wget https://github.com/LineageOS/android_device_oneplus_oneplus3/commit/4cf4c48ee33c6958fad08363fd19c7cce0d45f48.patch -O - | git am

popd

##

pushd device/rr/sepolicy

# sepolicy: Add rules for LiveDisplay HIDL HAL
wget https://github.com/LineageOS/android_device_lineage_sepolicy/commit/75dab2691a474025964b95f2bbf9246ec82d2779.patch -O - | git am

popd

##

pushd hardware/lineage/interfaces

# lineage/interfaces: Add binderized LiveDisplay HAL
wget https://github.com/LineageOS/android_hardware_lineage_interfaces/commit/eea7a68d0dee518ebe72e3a753a5a7912525874d.patch -O - | git am

# lineage/interfaces: Add IColor QDCM backend implementation
wget https://github.com/LineageOS/android_hardware_lineage_interfaces/commit/e6424a628869dcb650e8198dbf341d8c977160c5.patch -O - | git am

popd

##

pushd hardware/lineage/lineagehw

# lineagehw: Use HIDL for livedisplay vendor impl

wget https://github.com/LineageOS/android_hardware_lineage_lineagehw/commit/8b22a5a2d576024f0e945b030a00c72a93a238d4.patch -O - | git am

popd

##
