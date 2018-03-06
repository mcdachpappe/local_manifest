#!/bin/bash

##
# kernel picks
##

# clk: msm: clock-cpu-8996: Use CLKFLAG_NO_RATE_CACHE for perfcl_hf_mux
wget https://github.com/nitrogen-project/android_kernel_oneplus_msm8996/commit/710b8e0c67785e0457757204bd3e3653bbca2771.patch -O - | git am

# qcom-cpufreq: Use CLKFLAG_NO_RATE_CACHE
wget https://github.com/nitrogen-project/android_kernel_oneplus_msm8996/commit/e1f3495d88cf1b70288b1c67c32ba233220d4705.patch -O - | git am

# DTS: Enable wakeup events for the volume keys
wget https://github.com/nitrogen-project/android_kernel_oneplus_msm8996/commit/56702c010fd6891d4540e5cbbe69d6aa036c62be.patch -O - | git am

# arm: dts: Remove MSM watchdog IPI ping in msm8996
wget https://github.com/nitrogen-project/android_kernel_oneplus_msm8996/commit/dc5fd93a1151c0baf6e9af1e708708a412959b48.patch -O - | git am

# ASoC: core: Don't assign an out-of-bounds address to rtd_aux
wget https://github.com/nitrogen-project/android_kernel_oneplus_msm8996/commit/cb5393a5cc74f8ea0af0d836b44021de6033e34c.patch -O - | git am

# msm: qdsp6v2: Allow 320K AAC encoding
wget https://github.com/nitrogen-project/android_kernel_oneplus_msm8996/commit/a2b8534c945fa3e93ab8ec9cf1ec26ea6af2be14.patch -O - | git am

# drivers:usb:gadget: Set product_string for Android Auto
wget https://github.com/nitrogen-project/android_kernel_oneplus_msm8996/commit/088c33e014e49a2c7238741c161e3c7bbac453fc.patch -O - | git am

##

# cpufreq: interactive: add screen off max frequency tunable
# wget https://github.com/MSF-Jarvis/oneplus3/commit/3705f59ea42d2f8a2a016d58c8cb50c5b6ccf20c.patch -O - | git am
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996/commit/b188ad5359a9d69cf212000de0183a4f91ebd0b2.patch -O - | git am

##
# msm_performance
##

# msm_performance: Make input boosting optional
wget https://github.com/MSF-Jarvis/oneplus3/commit/f8b4df758920d10298c1643bd803a69955ce37a2.patch -O - | git am

# msm: performance: prevent userspace hints to decrease max cpu freq
wget https://github.com/MSF-Jarvis/oneplus3/commit/66964ed4eb55661e3b8afdc31743e7f093cb1144.patch -O - | git am

# msm_performance: don't limit min and max cpu freq
wget https://github.com/MSF-Jarvis/oneplus3/commit/747f18716ff1b413bf8cd22f71024195be8aa575.patch -O - | git am

##
# sultanxda patches
##

# arm64: Don't force compilation of memlat devfreq governors
wget https://github.com/MSF-Jarvis/oneplus3/commit/858d2f03ccd9f1b62644553eb751fc2614709974.patch -O - | git am

# ARM: dts: msm8996: Remove redundant CPU bandwidth devfreq devices
wget https://github.com/MSF-Jarvis/oneplus3/commit/dc06fdf4e471351515da09b2102b4e8abd27c56c.patch -O - | git am

# scsi: ufs: Fix crashes caused by uninitialized completion usage
wget https://github.com/MSF-Jarvis/oneplus3/commit/d34f869b191e7aeeea37ccd9c8cc9fcbfa7e8849.patch -O - | git am

# PM / devfreq: Add an interface to boost devices when the screen is woken
wget https://github.com/MSF-Jarvis/oneplus3/commit/d792b93c822ce5d7354c040eaeac35ac899abfd6.patch -O - | git am

# PM / devfreq: Boost "624000.ufshc" and "soc:qcom,cpubw" on screen wake
wget https://github.com/MSF-Jarvis/oneplus3/commit/c1698c20f7cef5013b8540698281865dcaad3e16.patch -O - | git am

# PM / devfreq: Reduce wake boost duration to 5000 ms
wget https://github.com/MSF-Jarvis/oneplus3/commit/3b56a87ce7336e9b4ef7c785e0b731de720595a8.patch -O - | git am

# PM / devfreq: Don't boost 624000.ufshc on wake
wget https://github.com/MSF-Jarvis/oneplus3/commit/824079cdba455e97778b624109a85e2920494685.patch -O - | git am

# PM / devfreq: Remove null termination in boost_devices
wget https://github.com/MSF-Jarvis/oneplus3/commit/33112f5189ab9cf3f43da7d4f81db8e13002881b.patch -O - | git am

# PM / devfreq: Fix typo that caused an infinite loop
wget https://github.com/MSF-Jarvis/oneplus3/commit/e0da21f454164f160261426dbd3d5839579c7b70.patch -O - | git am

# PM / devfreq: Add a governor white list
wget https://github.com/MSF-Jarvis/oneplus3/commit/7d4e83c96e63bb8f78c77daea9443aa3cb174680.patch -O - | git am

##
# fp-boost driver
##

# cpufreq: fp-boost: Don't mess up with normal home key press
wget https://github.com/MSF-Jarvis/oneplus3/commit/64e45f41d90694b1df0b1a6849d90eaaec259b64.patch -O - | git am

# cpufreq: Enable fingerprint boost by default
wget https://github.com/MSF-Jarvis/oneplus3/commit/d86c5ccf012bf205e5bc6b04097bcb38601fd97c.patch -O - | git am

# fp-boost: Avoid unnecessory boost sequence
wget https://github.com/MSF-Jarvis/oneplus3/commit/c797fec938e478ea64c68fd091689e281794c8f5.patch -O - | git am

# cpufreq:fp-boost: Fix checkpatch warnings
wget https://github.com/MSF-Jarvis/oneplus3/commit/b69742b6492ee5f7e822efe7a213d4e77a337285.patch -O - | git am

# drivers:cpufreq:fp-boost Add missing newline
wget https://github.com/MSF-Jarvis/oneplus3/commit/81564dbd038d1744f28dc46f9970a71221935439.patch -O - | git am

# drivers:cpufreq:fp-boost: Make boost workqueue unbound
wget https://github.com/MSF-Jarvis/oneplus3/commit/3d73d73d03fdb88355957c62b655848c2297374c.patch -O - | git am

##

# qcom-cpufreq: skip frequencies that round to same rate
# wget https://github.com/MSF-Jarvis/oneplus3/commit/d7aaf7d9faa858e3ea7b5539679604e447097439.patch -O - | git am

##

# cpufreq: suspend cpufreq governors on shutdown
wget https://github.com/MSF-Jarvis/oneplus3/commit/5daa49b864d89c1d9b970eccfc500d47306558f8.patch -O - | git am

# drivers: cpufreq: Use interruptible waits
wget https://github.com/MSF-Jarvis/oneplus3/commit/4cba72b72e1a7853f069f101e6fd421c87472bac.patch -O - | git am

# cpufreq: fallback to interactive if governor is not found
wget https://github.com/MSF-Jarvis/oneplus3/commit/ac4794a85132d8beac62022d458b1e021002cc01.patch -O - | git am

# cpufreq: Restore policy min/max limits on CPU online
wget https://github.com/MSF-Jarvis/oneplus3/commit/0f1b019699e82bdda1e2d374359887c1ea37380e.patch -O - | git am

##
# tcp tweak
##

# tcp_westwood : Tune-up
wget https://github.com/MSF-Jarvis/oneplus3/commit/53f79d9f5ae6e6f96b1c6d95a922e148e5cf7b65.patch -O - | git am

##
# maple
##

# block: Clean-up maple-iosched.c
wget https://github.com/MSF-Jarvis/oneplus3/commit/777ad96a459394fa2bdf56343ef5f85c2b9b559c.patch -O - | git am

##
# sweep2sleep
##

# touch: sweep2sleep
# wget https://github.com/flar2/android_kernel_oneplus_msm8996/commit/4527ccc0c2194d9b5df15cc9bb4a79caca50209f.patch -O - | git am

# sweep2sleep: don't create input device
# wget https://github.com/flar2/android_kernel_oneplus_msm8996/commit/b7b80805f5342075f52dc5cffd0fd30f2100b7ed.patch -O - | git am

##
# adreno boost
##

# msm_adreno_tz: add adrenoboost parameter
wget https://github.com/flar2/android_kernel_oneplus_msm8996/commit/c670e68f20d6a096623e3e9826bc15d72a4d21a4.patch -O - | git am

# adrenoboost: finetuning algorithm - scale it a bit down
wget https://github.com/flar2/android_kernel_oneplus_msm8996/commit/37473ba90a893bde9de9c8416ac97b7aa44641e2.patch -O - | git am

# adrenoboost: disable by default
wget https://github.com/flar2/android_kernel_oneplus_msm8996/commit/081018cd844c311241811c0eb9b75904810a2fd7.patch -O - | git am

##
# mcd patches
##

# revert/fix: make panel mode switches work again with nitrogenOS
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996/commit/ccb84107294ce732592a75d134703c73bffac2e5.patch -O - | git am

# defconfig: fix some doubled entrys and set localversion
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996/commit/458a59ab837685b3a97f8a996c5afbb86309e46e.patch -O - | git am

##

read -p "Press ENTER..."

##
# end of kernel picks
##