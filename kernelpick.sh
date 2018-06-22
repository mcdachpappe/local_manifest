#!/bin/bash

##
# kernel picks
##

pushd kernel/oneplus/msm8996

# arm64: lib: memory utilities optimization
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/8b965e3d3b2d12c69aced5df4be3058deda8a9d6.patch -O - | git am

# Drivers: cpufreq: Add Alucard Governor
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/b11857f633ee926b74efbf5686853454302d20be.patch -O - | git am

# Drivers: cpufreq: fix for Alucard gov freqs stuck allways at max
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/a27141563b4dfc88e8ca3f71df58bf5133e4f16e.patch -O - | git am

# Drivers: cpufreq: Add Smartmax_EPS Governor
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/09f1805ed92e71af800a86dc9d8b265c2f6c65c7.patch -O - | git am

# Drivers: cpufreq: Smartmax_EPS: Some Tweaks
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/45cce02bb9a7e7a0effcc8f9c1f361f24b12ef93.patch -O - | git am

# Drivers: cpufreq: Add blu_active governor
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/16061001b3aa73baa91f3b5565e680bc6e33ebf7.patch -O - | git am

# Drivers: cpufreq: Add zzmoove governor (bLE-develop-k3xx)
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/59c7bc97bbbd2bc1dcb107f9e36b28b73ec2f880.patch -O - | git am

# defconfig: enable alucard, blu_active, smartmax_eps, zzmove gov
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/a1ecfc3393d4ecd5efaf695695b8d180edfc429c.patch -O - | git am

# qcom-cpufreq: ensure startup is according to default frequencies
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/a435eef3a9c2bfe1c13c179e6753353eb814406a.patch -O - | git am

# CPUFREQ: prevent setting io_is_busy by ROM. waste of power
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/09482e26a0356e549f1ee3eaf375cb672bfe1778.patch -O - | git am

# CPUFREQ: prevent setting io_is_busy by ROM - again
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/051209d5546d6cd6b66c6f0e74ddae6b56951948.patch -O - | git am

# cpufreq: interactive: prevent perfd from messing with the governor params
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/2f4df8a4283685f29216d85de42be476e33a34e5.patch -O - | git am

# OP3T: Add state notifier driver
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/51cf0b22121375382b7efb7c9a718af257b9b43b.patch -O - | git am

# state_notifier: Enable by default
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/1aa1220f2bc4fa9a6edacdc0a8b59ef2dbf9be74.patch -O - | git am

# state_notifier: Queue work on any core
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/8f6d04807fec5db1ed8634f674ae707f241ec8be.patch -O - | git am

# state_notifier: Reduce defer on suspend call to 1 second
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/535ef7526918a24b81fe315fa0788d28f2c47aa6.patch -O - | git am

# state_notifier: Make workqueues unbound
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/b03eb621b251d5e889f4e20b4fbbe4cbd62c37da.patch -O - | git am

# state_notifier: Drop unneeded module_param_named entries
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/d924ccad2f96331076a908f44fb15a9c4a090759.patch -O - | git am

# state_notifier: Remove internal enablement switch
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/9209693cbb9edb43a9079658c7923fb80c4d0075.patch -O - | git am

# defconfig: enable state notifier
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/04e671771ad7eb6c9f99116c782ccecc12be0207.patch -O - | git am

# cpu-boost: Boost priority of notifier_block
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/a4b041769ee1c9f8b6c78d030c111ebb77e12b1d.patch -O - | git am

# drivers/mmc/core/core.c: Disable CRC check and add toggle
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/6bfb14bd2fa56b08182bea1dfb31bb4565c74240.patch -O - | git am

# Reduced CPU Load-Average
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/685843c0e9a457ab18058a00df0600c31963638f.patch -O - | git am

# Optimized Console FrameBuffer for upto 70% increasePerformance
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/99f92d4dfc15d2eecc87b85f5eaab7844418830a.patch -O - | git am

# tcp_output: set initial TCP window size to 64K (speed improvement)
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/0bd2514578ff6dfe496693fb736b98291111782c.patch -O - | git am

# int_sqrt: Improve 3x faster integer sqrt
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/4bce0d60a3f2f8a8409763c2f69a2c4689ef7383.patch -O - | git am

##
# mcd patches
##

# cpu-boost: Rework scheduling setup
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/a4af87b9dcc29d0fd51b6fe8a8201099e574c153.patch -O - | git am

# mdss_fb: add backlight dimmer option
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/a0c446431ce48bb0d8ff2c5da6480ace06841dc7.patch -O - | git am

# power: quickwakeup: initial driver
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/3049fca43a881a34dceaa958694c4acfb8fcd806.patch -O - | git am

# defconfig: enable quick-wakeup
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/9aa64a7bc56cf0e5d0f1610deaf8b2f5a9764911.patch -O - | git am

# block: add zen(v2) iosched
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/4762e62e1d6a7fcc16bb08133a135f9f11ea821a.patch -O - | git am

# defconfig: enable maple and zen ioshed
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/59bcfef943453b865bd7b1bdbbfa55b0802b84d3.patch -O - | git am

# msm_adreno_tz: add adrenoboost parameter and display state awareness
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/8210ee29e230e1529b94a9b81e895594f138cf0f.patch -O - | git am

# ARM: dts: 15801: Optimize display effects of SRGB, DCI-P3 
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/151abdb410f72ec51bad123fd0296b52ab37df0b.patch -O - | git am

##
# mady again
##

# qcom: mpm: use interruptible wait to reduce load avg
wget https://github.com/mady51/unifiedOp3/commit/3e033fd067a46c7de86fe89a104a6808979d805f.patch -O - | git am

# arm64: strcmp: Align to cache and preload
wget https://github.com/mady51/unifiedOp3/commit/499a5005fa13071a7306b9435f2b4ea07ea73fac.patch -O - | git am

# power:qpnp-charger: extended charge time from 30s to 100s when battery status is near to full
wget https://github.com/mady51/unifiedOp3/commit/a3e52ff8ecbdb6fc3d3274422b52579dfcc1af97.patch -O - | git am

# workqueue: add cancel_work()
wget https://github.com/mady51/unifiedOp3/commit/8fa6f43026cab92601d8b2bb3a05f33bcceb0916.patch -O - | git am

# workqueue: Implement delayed_work_busy()
wget https://github.com/mady51/unifiedOp3/commit/dab9b56470d47a3e95365cf4e276c8813c3d020b.patch -O - | git am

# workqueue: Remove config guard for power_efficient
wget https://github.com/mady51/unifiedOp3/commit/8916fc94a0e31fedde709eb2697c4ceaaf598b3f.patch -O - | git am

# qcacld-2.0: Disable CONFIG_WLAN_THERMAL_SHUTDOWN
wget https://github.com/mady51/unifiedOp3/commit/8655f8f652ff929fd3533c9fc2b010b7ca688aa0.patch -O - | git am

# [drivers/clk] clock-cpu-8996: Add early boot frequency to reduce bootup time
wget https://github.com/mady51/unifiedOp3/commit/297ab36e48bb3a7c4aaa2b68ce6934aae221526d.patch -O - | git am

# msm_performance: fix input boosting disable not sticking on big cluster
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/62660763698fec093dfbdcaf4f11880fb8db1d94.patch -O - | git am

# drivers: misc: implement usb fast charge mode
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/3fd25b259a7633bb05b4a15928e02f279a2dda62.patch -O - | git am

# defconfig: enable usb fast charge
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/36db683187e187c4b00cdaf68af5ebc0712888d3.patch -O - | git am

# defconfig: set local_version
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/674f8ad8cc49b462a12bdad92d22872664937fb2.patch -O - | git am

# Introduce Adreno idler for devfreq-based Adreno devices
wget https://github.com/mady51/unifiedOp3/commit/4d9fc317348643f48237d959ef2ed61bcf71b1ef.patch -O - | git am

# adreno_idler: switch to count based instead of time based
wget https://github.com/mady51/unifiedOp3/commit/9323e1d782c5250e4be3e8c5b2b1e70d45682f63.patch -O - | git am

# adreno_idler: remove frequency bump
wget https://github.com/mady51/unifiedOp3/commit/029e5f0365525582e7044c60ae80f2128ae2d2d0.patch -O - | git am

# adreno_idler: fix-up type definitions
wget https://github.com/mady51/unifiedOp3/commit/57f90ffcbce21766d972f0fef63fd4c75c60ab6d.patch -O - | git am

# adreno_idler: fix-up some comments
wget https://github.com/mady51/unifiedOp3/commit/b24818292fa0c0e353cf8e45b8dd4e0174d64446.patch -O - | git am

# adreno_idler: fix typos :)
wget https://github.com/mady51/unifiedOp3/commit/c8a7aecc3da238168b91c7381bff60acd58da7a3.patch -O - | git am

# adreno idler: Ramp down more agressively
wget https://github.com/mady51/unifiedOp3/commit/a069cfb1bbee4d37737c950104bf06ba53348f82.patch -O - | git am

# PM / devfreq: Only boost for 3 seconds
wget https://github.com/mady51/unifiedOp3/commit/049d2e697931412e9b383c005a508c5a3aaaa911.patch -O - | git am

# cpufreq: Add Relaxed governor
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/4ae95d6d310f62b16f74c1f93407ae84d4e05438.patch -O - | git am

# relaxed: Fix boost_level if statement
wget https://github.com/mady51/unifiedOp3/commit/84671e2086e7f855c2fd8de2a77f082bc30332bd.patch -O - | git am

# relaxed: Fix down_threshold_suspended sysfs input
wget https://github.com/mady51/unifiedOp3/commit/2fd1a1215ac163fa5dfb439aaecb87ba03ec5b8e.patch -O - | git am

# relaxed: Cache tuneables
wget https://github.com/mady51/unifiedOp3/commit/8a7193648f7aeff7eca9d59173da54145a4c0e5d.patch -O - | git am

# defconfig: enable Relaxed governor
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/bc3f13ddf537c75dec0b71425c68ef0acccb98e6.patch -O - | git am

# net: sch_generic: Remove unnecessary watchdog warning
wget https://github.com/mady51/unifiedOp3/commit/0040fad8d49aa7782e592b750ed767d2532ca9c7.patch -O - | git am

# increased fp speed
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/d176b58bd1328fb764ade4ef1ccc19a2de510fde.patch -O - | git am

# drivers: mdss: queue input handler functions to a high prio wq
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/9db315dd98b7de0337bc2e65a07c53382fc546bc.patch -O - | git am

# drivers: mdss: queue work on system_power_efficient_wq
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/c797d261e464fa6219b8c2c6a6cbf18ab4efe6fe.patch -O - | git am

# PM / devfreq: Use reliable state notifier
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/f61c4c90f8f602a768314e83c7db269f886d268c.patch -O - | git am

# PM / devfreq: Use max priority for state notifier
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/6ae23c46227a0f8d5c2445e27eddb5de9d773c55.patch -O - | git am

# devfreq: boost on state_boost events
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/184dbc53a3732a2d69f9a2b2f97bfb640bc07bfb.patch -O - | git am

# state_notifier: add a third case for boosting
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/ba4c8a679d3c4b365ef142bc8d282e0222916a5a.patch -O - | git am

# fp-boost.c: Use State Notifier for display query.
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/e3628bad706e40e6c203b7dbe88c4eb9ae23be27.patch -O - | git am

# fp-boost: adapt to state_booster
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/5986d87a1d014d2c93bbd1474fab354d837fb931.patch -O - | git am

# video: mdss: add missing State Notifier hook
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/029a7f7410b782b6d4e5e8cf7e96f11a09775dab.patch -O - | git am

# state_notifier: Drop unneeded module_param_named entries
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/01f7b1eeeb6949776d29b6518a31278823034288.patch -O - | git am

# state_notifier: Remove internal enablement switch
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/c08db6a840022d8ffc69a9048672c75fa7f2e170.patch -O - | git am

# msm: add msm_zen_decision
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/aec3698c0f9c8424aba84f8e59dd23fce2a3ce52.patch -O - | git am

# msm: msm_zen_decision: offline only power cluster
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/dc043fbbd1d965cd8df0ba0b98456fedca79ee86.patch -O - | git am

# defconfig: enable zen decision
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/09936c26af772b7e22d449bf473adddb806bc6e1.patch -O - | git am

# mdss_dsi.c: fix derp
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/62a2ede117991c2c63fadd3cc7ed38f58f18086b.patch -O - | git am

# arm64: Add alucard hotplug
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/ff27405b8974769d2f1f9c438668da0bc027d7b4.patch -O - | git am

# made compatible to our device
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/d0432d7a847e6dbd753c5848fde010186e14fece.patch -O - | git am

# disabled by default and changed cores to 4
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/271452a52609cb575d9e0fe8fed9a6b4556fd911.patch -O - | git am

# defconfig: add adreno_idler
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/361240f6915cec1246e184f92d511fe6d0ecbe8f.patch -O - | git am

# cpufreq: Schedule work for the first-online CPU on resume
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/cced588ca294ce09ced2c627112b38996146a3e8.patch -O - | git am

# msm-core: disable userspace access to poll_ms
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/0bd0a47153d25395afe3afbe9f6d3038780a4a8a.patch -O - | git am

# drivers: cpu-boost: optimize policy update loop on input cpufreq boost
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/c8448c85e15f42119ed30dfc6281bb1ba13719aa.patch -O - | git am

# reduced wakelocks by wlan
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/cc785731a26e6045221f3df6c2d34a0c7e001566.patch -O - | git am

# mm/memory_hotplug: optimize probe routine
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/e4efcfb3b4f3fda9811d6892c02527a44c3b3794.patch -O - | git am

# makefile: use ccache
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/d6b826bc0e61e8f216a5ec7586978049020b0bed.patch -O - | git am

# defconfig: enable adreno_idler
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/9610c8f69645202e23543468ab555be3b0bb453a.patch -O - | git am

# defconfig: disable cpu hotplugs as default
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/bfa1af57ca353f10b2dd43307af3fc9698e9e62f.patch -O - | git am

# defconfig: enable cpu-hotplugs again
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/ef8670aa349fb05076ab077033ca0f3fec31e60a.patch -O - | git am

# cpufreq: Introduce CPU wake boost driver
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/bd4f61fd904f0fcadfd8b0f52f5d0f754e5d5a24.patch -O - | git am

# defconfig: enable CPU wake boost driver
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/af4cebb117768da884b104202507b8db7c8312ad.patch -O - | git am

# defconfig: enable fingerprint-boost
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/5aab74904e4e327a4ed62ef3e886dd934f8192eb.patch -O - | git am

# give fp more priority
wget https://github.com/mcdachpappe/android_kernel_oneplus_msm8996-caesium/commit/35303b2bd50c3c2c5fdb9b9b63c44c81b2548dad.patch -O - | git am
popd

##
# end of kernel picks
##
