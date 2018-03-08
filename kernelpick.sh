#!/bin/bash

. build/envsetup.sh

read -p "Press ENTER..."

##
# kernel picks
##

pushd kernel/oneplus/msm8996

# qpnp-smbcharger: Bring in select fixes from Xiaomi
wget https://github.com/mady51/gzosp-base/commit/ace9074d7542483dcbe06278452382ce82fcc20e.patch -O - | git am

# oneplus: add some error wakelock cleanups
wget https://github.com/mady51/gzosp-base/commit/779dd7e0aa89cbf347ee2ecdb56a93ed6404073a.patch -O - | git am

# usb: otg: reduce the wakelock timeout to 1 second
wget https://github.com/mady51/gzosp-base/commit/66b9ca09334e6f37cab61338d2ca430494c266e5.patch -O - | git am

# Decrease time to enter sleep [Pafcholini]
wget https://github.com/mady51/gzosp-base/commit/5d96a1c9c743d01188a6edfbdc52b8198c9ed2c5.patch -O - | git am

# arm64: lib: memory utilities optimization
wget https://github.com/mady51/gzosp-base/commit/6828a9819b333d1711bc0c1ca66daf74164d37e0.patch -O - | git am

# power: msm-core: Remove temperature polling
wget https://github.com/mady51/gzosp-base/commit/e7f3a40e8ee51a945fb1e98a59687ff79f6d7088.patch -O - | git am

# msm: secure_buffer: Fix stage-2 protection of kernel text region
# wget https://github.com/mady51/gzosp-base/commit/a153f04478e1636e336caad6058e3622ed254c0c.patch -O - | git am

# CPUFREQ: prevent setting io_is_busy by ROM. waste of power
wget https://github.com/mady51/gzosp-base/commit/910dd77ec92fc21d2222b398e69451c0d41cf460.patch -O - | git am

# cpufreq: interactive: prevent perfd from messing with the governor pa…
wget https://github.com/mady51/gzosp-base/commit/74f17ef2c76bfea5e8e4373a877da793c47b8616.patch -O - | git am

# OP3T: Add state notifier driver
wget https://github.com/mady51/gzosp-base/commit/ffd7ed55a858e3f470904d1a253788cbb73cf35a.patch -O - | git am

# state_notifier: Enable by default
wget https://github.com/mady51/gzosp-base/commit/e561547272c618ba4d3d3ad5e59e1d94f00f9399.patch -O - | git am

# state_notifier: Queue work on any core
wget https://github.com/mady51/gzosp-base/commit/4eb7b0baf175a6a8ee00e0ca4165619746667439.patch -O - | git am

# state_notifier: Reduce defer on suspend call to 1 second
wget https://github.com/mady51/gzosp-base/commit/f490f98df53ae5a5ef9cd25434b26191438f8df0.patch -O - | git am

# state_notifier: Make workqueues unbound
wget https://github.com/mady51/gzosp-base/commit/b9263d01863cf3353d1bc678eb9f5331974479d2.patch -O - | git am

# state_notifier: Drop unneeded module_param_named entries
wget https://github.com/mady51/gzosp-base/commit/df8a67d8f4ed4a8290205a4a2b8fb4abe4651f0c.patch -O - | git am

# state_notifier: Remove internal enablement switch
wget https://github.com/mady51/gzosp-base/commit/c81f74d94657a3ba062f0bf93281035bd5526555.patch -O - | git am

# defconfig: enable state notifier
# CONFIG_STATE_NOTIFIER=y
# wget https://github.com/mady51/gzosp-base/commit/7fe4633c72d87182be44f889ff60bad301e1ccb3.patch -O - | git am

# cpu-boost: Boost priority of notifier_block
wget https://github.com/mady51/gzosp-base/commit/d07d321bfc8e747dbdbe92df410009ed09da301b.patch -O - | git am

# ASoC: wcdxxxx: queue work on power efficient wq
wget https://github.com/mady51/gzosp-base/commit/b857f3626d7fb1d071612d7d30bc55cba210f698.patch -O - | git am

# drivers/mmc/core/core.c: Disable CRC check and add toggle
wget https://github.com/mady51/gzosp-base/commit/4da24f468ae5d07bf327a0136134db6ad69e2637.patch -O - | git am

# msm_adreno_tz: Add display state awareness
# wget https://github.com/mady51/gzosp-base/commit/ea49f7202fb46685e3cdd6db31b6b3f901792705.patch -O - | git am

# maple tweaks
wget https://github.com/mady51/gzosp-base/commit/6a608c7d7c8a58d64da6e6393779f58791613149.patch -O - | git am

# Reduced CPU Load-Average
wget https://github.com/mady51/gzosp-base/commit/dcda58718a695d49935acdaedc79a79be1b41924.patch -O - | git am

# Optimized Console FrameBuffer for upto 70% increasePerformance
wget https://github.com/mady51/gzosp-base/commit/f3002df6377484ee4c7067f7f8092ad84f210fe8.patch -O - | git am

# tcp_output: set initial TCP window size to 64K (speed improvement)
wget https://github.com/mady51/gzosp-base/commit/94934ff5fdcacb04a94c7fc4004bedcd26e25f1e.patch -O - | git am

# Readahead: Optimize divide/multiply by power of 2 using L/R shift
# wget https://github.com/mady51/gzosp-base/commit/9ff622560e4546f5ded63430a00a4d6b395f33a7.patch -O - | git am

# int_sqrt: Improve 3x faster integer sqrt
wget https://github.com/mady51/gzosp-base/commit/ee0adf896c94e07977b9409c4c43e6d5de6a4a87.patch -O - | git am

##
# mcd patches
##

# Kernel/sched: Reduce latency for better responsiveness
wget https://github.com/mcdachpappe/oneplus3/commit/ff71bf102c790d9e4fa7f2b4bf7e2696ef107de6.patch -O - | git am

# cpu-boost: Rework scheduling setup
wget https://github.com/mcdachpappe/oneplus3/commit/bc3a419b829291dc78f4eea947200ed2fb4b4fd6.patch -O - | git am

# mdss: add/support oneplus panel modes (geht nicht)
# wget https://github.com/mcdachpappe/oneplus3/commit/5bb62fe1c44f062b657e5dea08f7a611df0c2b52.patch -O - | git am

# ARM: dts: 15801: rework this mess
wget https://github.com/mcdachpappe/oneplus3/commit/6495db263748d84047af9657c5ba5e44c3241c6f.patch -O - | git am

# mdss_fb: add backlight dimmer option
wget https://github.com/mcdachpappe/oneplus3/commit/91eaf2e7d53aeb4e61afccba9f9396ffbe282f33.patch -O - | git am

# Drivers: cpufreq: Add Alucard and Smartmax_EPS Governor
wget https://github.com/mcdachpappe/oneplus3/commit/2d7e9a540e22900336e0f0d941a7a5c78ff85ab3.patch -O - | git am

# power: quickwakeup: initial driver
# wget https://github.com/mady51/gzosp-base/commit/d53185d22b0a6e2940841951b8c26fdff50bb6ac.patch -O - | git am
wget https://github.com/mcdachpappe/oneplus3/commit/0c244616bf0482c4dc7db7bd6bfc5da2336983b8.patch -O - | git am

# block: add zen scheduler
# CONFIG_IOSCHED_ZEN=y
# # CONFIG_DEFAULT_ZEN is not set
wget https://github.com/mcdachpappe/oneplus3/commit/a62ab4023b34fb1fb8b022eaa5f71288c2f7a046.patch -O - | git am

# msm_adreno_tz: add adrenoboost parameter
# adrenoboost: finetuning algorithm - scale it a bit down
# adrenoboost: disable by default
# wget https://github.com/mcdachpappe/oneplus3/commit/dc69aca7b1ce3b69caf27010ce5280585303dffa.patch -O - | git am
wget https://github.com/mcdachpappe/oneplus3/commit/8d0583366cc658a97eecdecbb3ad5ddc9ff6c17c.patch -O - | git am

##

# qcom: mpm: use interruptible wait to reduce load avg
wget https://github.com/mady51/gzosp-base/commit/3e033fd067a46c7de86fe89a104a6808979d805f.patch -O - | git am

# arm64: strcmp: Align to cache and preload
wget https://github.com/mady51/gzosp-base/commit/499a5005fa13071a7306b9435f2b4ea07ea73fac.patch -O - | git am

##
# mady again
##

# power:qpnp-charger: extended charge time from 30s to 100s when battery status is near to full
wget https://github.com/mady51/gzosp-base/commit/a3e52ff8ecbdb6fc3d3274422b52579dfcc1af97.patch -O - | git am

# workqueue: add cancel_work()
wget https://github.com/mady51/gzosp-base/commit/8fa6f43026cab92601d8b2bb3a05f33bcceb0916.patch -O - | git am

# workqueue: Implement delayed_work_busy()
wget https://github.com/mady51/gzosp-base/commit/dab9b56470d47a3e95365cf4e276c8813c3d020b.patch -O - | git am

# workqueue: Remove config guard for power_efficient
wget https://github.com/mady51/gzosp-base/commit/8916fc94a0e31fedde709eb2697c4ceaaf598b3f.patch -O - | git am

popd

read -p "Press ENTER..."

##
# end of kernel picks
##
