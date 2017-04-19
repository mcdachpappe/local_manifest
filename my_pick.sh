#!/bin/bash

#. build/envsetup.sh

#temp fix for ogg/vorbis
pushd hardware/qcom/audio-caf/msm8996
git fetch https://review.lineageos.org/LineageOS/android_hardware_qcom_audio refs/changes/64/163564/3 && git cherry-pick FETCH_HEAD
popd

#add Magisk
pushd build
wget https://github.com/nvertigo/android_build/commit/4bd296c062c8d17ec6e443c5fed46dc3c1813654.patch -O - | git am
popd

#microG
pushd frameworks/base
wget https://github.com/nvertigo/android_frameworks_base/commit/5a48dd6bfec4bc3179e983e8fdd088c3bedeedfd.patch -O - | git am
wget https://github.com/nvertigo/android_frameworks_base/commit/d3152578850575e64c12d85ac42b6d7a1e5d827d.patch -O - | git am
popd
