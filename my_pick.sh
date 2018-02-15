#!/bin/bash

. build/envsetup.sh

read -p "Press ENTER..."

##
# kernel picks
##

pushd kernel/oneplus/msm8996

# arm64: lib: memory utilities optimization
wget https://github.com/mady51/gzosp-base/commit/6828a9819b333d1711bc0c1ca66daf74164d37e0.patch -O - | git am

##

# display: add a simple api to query the display state (on/off) at any point in time
wget https://github.com/MSF-Jarvis/oneplus3/commit/508314f794a38adeb0b807a5ba713691c6a680ac.patch -O - | git am

# cpufreq: cpu-boost: don't boost big cluster on input touch unless it has at least 1 task running on any of its cores to save power
wget https://github.com/mady51/gzosp-base/commit/fdf06aa97a53a0ee95cb7a40e80ced5600abc58f.patch -O - | git am

# cpufreq: cpu-boost: don't boost if input_boost_ms is <= 0
wget https://github.com/mady51/gzosp-base/commit/d4c82e2bbbf771d22f833d23e34ddad7e3c8b129.patch -O - | git am

# CHROMIUM: cpufreq: interactive: calculate load before freq change
wget https://github.com/MSF-Jarvis/oneplus3/commit/9c15c5f6cc4475a89ea6eab070c0681d7dcfe62a.patch -O - | git am

# cpufreq: interactive: Remove the jump_to_max hack
wget https://github.com/MSF-Jarvis/oneplus3/commit/bddddace0e1a7991d7a5d964e22563352af2889f.patch -O - | git am

# cpufreq_interactive: remove boost functionality
wget https://github.com/MSF-Jarvis/oneplus3/commit/8f5350849c8b6b53b876978b81dc64b811d2542c.patch -O - | git am

# cpufreq: interactive: fix to come out of hysteresis mode
wget https://github.com/MSF-Jarvis/oneplus3/commit/bf0888b058d664fd3e2c36f0918d8c2c5b6fb375.patch -O - | git am

# cpufreq_interactive: Allow hispeed_freq to work with prediction
wget https://github.com/mady51/gzosp-base/commit/c448615de82427d49ceae35434213d31572f57e1.patch -O - | git am

# cpufreq: interactive: remove hispeed_freq init restriction
wget https://github.com/MSF-Jarvis/oneplus3/commit/13f30806b5dbff977aa182ea7e15fe904b94c0ef.patch -O - | git am

# cpufreq: interactive: add powersave bias tunable
wget https://github.com/MSF-Jarvis/oneplus3/commit/4b1e6fa4e12c28f8bb77d2ee9fe621e813a123da.patch -O - | git am

# cpufreq: interactive: add screen off max frequency tunable
wget https://github.com/MSF-Jarvis/oneplus3/commit/3705f59ea42d2f8a2a016d58c8cb50c5b6ccf20c.patch -O - | git am

#
## msm_performance
#

# msm_performance: Make input boosting optional
wget https://github.com/MSF-Jarvis/oneplus3/commit/f8b4df758920d10298c1643bd803a69955ce37a2.patch -O - | git am

# msm: performance: prevent userspace hints to decrease max cpu freq
wget https://github.com/MSF-Jarvis/oneplus3/commit/66964ed4eb55661e3b8afdc31743e7f093cb1144.patch -O - | git am

# msm_performance: don't limit min and max cpu freq
wget https://github.com/MSF-Jarvis/oneplus3/commit/747f18716ff1b413bf8cd22f71024195be8aa575.patch -O - | git am

#
## sultanxda patches
#

# workqueue: Schedule workers on CPU0 or CPU0/CPU1 by default
wget https://github.com/MSF-Jarvis/oneplus3/commit/c39517d9be33b4f6657a05b5fafef0e2fab85f4f.patch -O - | git am

# kthread: Force all non-percpu kthreads onto the power cluster
wget https://github.com/MSF-Jarvis/oneplus3/commit/e6a86cd385d371889c791baac563133c60a9f448.patch -O - | git am

# cpu: Don't allow CPUs in the power cluster to be unplugged
wget https://github.com/MSF-Jarvis/oneplus3/commit/a82187bc1e6a455f2fde6f31c7aa28216befb806.patch -O - | git am

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

#
## fp-boost driver
#

# cpufreq: Introduce fingerprint boost driver
wget https://github.com/MSF-Jarvis/oneplus3/commit/be91c9edbc8e3bcb0443c89f2100a8904a8a70b9.patch -O - | git am

# fp-boost: Set priority to max
wget https://github.com/MSF-Jarvis/oneplus3/commit/3abd6543f00108dc624940c88cb362f97cc347b8.patch -O - | git am

# fp-boost: Decrease duration to 2 seconds
wget https://github.com/MSF-Jarvis/oneplus3/commit/26589ad8bfdea0a2b018c03b370cad9e8a4fee4d.patch -O - | git am

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

# qcom-cpufreq: Use cpufreq_table_validate_and_show to fill freq_table
wget https://github.com/MSF-Jarvis/oneplus3/commit/c5d28484fbb576d5da5467724f9076295d999d53.patch -O - | git am

# qcom-cpufreq: skip frequencies that round to same rate
wget https://github.com/MSF-Jarvis/oneplus3/commit/d7aaf7d9faa858e3ea7b5539679604e447097439.patch -O - | git am

##

# cpufreq: suspend cpufreq governors on shutdown
wget https://github.com/MSF-Jarvis/oneplus3/commit/5daa49b864d89c1d9b970eccfc500d47306558f8.patch -O - | git am

# drivers: cpufreq: Use interruptible waits
wget https://github.com/MSF-Jarvis/oneplus3/commit/4cba72b72e1a7853f069f101e6fd421c87472bac.patch -O - | git am

# cpufreq: fallback to interactive if governor is not found
wget https://github.com/MSF-Jarvis/oneplus3/commit/ac4794a85132d8beac62022d458b1e021002cc01.patch -O - | git am

# cpufreq: Restore policy min/max limits on CPU online
wget https://github.com/MSF-Jarvis/oneplus3/commit/0f1b019699e82bdda1e2d374359887c1ea37380e.patch -O - | git am

#
## tcp tweak
#

# tcp_westwood : Tune-up
wget https://github.com/MSF-Jarvis/oneplus3/commit/53f79d9f5ae6e6f96b1c6d95a922e148e5cf7b65.patch -O - | git am

# caesium_defconfig: Set westwood as default TCP congestion handler
wget https://github.com/MSF-Jarvis/oneplus3/commit/152f3300d0a438bfd42b90ce4deddcedda0cd9b1.patch -O - | git am

# enable advanced tcp
wget https://github.com/mady51/gzosp-base/commit/4e02bc4a213fdcb1f7599b291f1efefb19699366.patch -O - | git am

##

#
## maple scheduler
#

# block: Add Maple I/O Scheduler
wget https://github.com/MSF-Jarvis/oneplus3/commit/8c1203706a29e93c813d295a1e9983f85974cc85.patch -O - | git am

# block: maple: Remove CONFIG_HZ dependency, assume 300 for interrupt frequency
wget https://github.com/MSF-Jarvis/oneplus3/commit/2dd26e75efa358a27d32ced9ec72e9c8481f513a.patch -O - | git am

# block: maple: Clean up and add patchlevel macro to keep track of commits
wget https://github.com/MSF-Jarvis/oneplus3/commit/e2772c33a69edb725e1f269cf64674d9bd32c23e.patch -O - | git am

# block: maple: Catch writes_starved sooner, increase limit.
wget https://github.com/MSF-Jarvis/oneplus3/commit/64ee478b70b927ebde1565eea52c249eedf7993a.patch -O - | git am

# block: maple: Fix some logic, import former/latter request logic from SIO, and use some improved bits of SIO
wget https://github.com/MSF-Jarvis/oneplus3/commit/0a4f44eec57ced3d6af7497c85e952ca6da522a8.patch -O - | git am

# block: maple: Serve asynchronous requests before synchronous ones
wget https://github.com/MSF-Jarvis/oneplus3/commit/9a3c593803c79924327efc71114320b2422bd1c6.patch -O - | git am

# block: maple: Serve asynchronous requests before synchronous ones
wget https://github.com/MSF-Jarvis/oneplus3/commit/cfc5b8e48d5bbc9b58dc058d2defab849202a4f0.patch -O - | git am

# block: maple: Make bools constant across functions
wget https://github.com/MSF-Jarvis/oneplus3/commit/fcc333a4840cd4d14714325118f1238def863551.patch -O - | git am

# block: maple: Fix inverted logic
wget https://github.com/MSF-Jarvis/oneplus3/commit/4760efa007e281fa2f31de9411f49b7299ad846a.patch -O - | git am

# maple-iosched: Fix the -Wdeclaration-after-statement warnings
wget https://github.com/MSF-Jarvis/oneplus3/commit/e305ac9cf81822a612155f48e4f000ffb2ef388b.patch -O - | git am

# block: maple: Stop abusing csd.list for fifo_time
wget https://github.com/MSF-Jarvis/oneplus3/commit/19bbc46b0eddba9ad84fb43c0d96b4e89f813e21.patch -O - | git am

# block: Maple.iosched: Fix Compiler Errors
wget https://github.com/MSF-Jarvis/oneplus3/commit/70fbf6056be5035d88833f3b68363200394913e3.patch -O - | git am

# block: maple: Use better presets
wget https://github.com/MSF-Jarvis/oneplus3/commit/ec491c4fc7f17dd491e67a1689aaec782b638db5.patch -O - | git am

# defconfig: enable MAPLE ioshed
wget https://github.com/mady51/gzosp-base/commit/cf179686f10b51954e4766795fb72ed652847a8e.patch -O - | git am

# Reduce Latency [Pafcholini]
wget https://github.com/mady51/gzosp-base/commit/d71e0abb32a49b6ca35fe24864a38e404341cf97.patch -O - | git am

##

#
## smartmax_eps gov
#

# Add Smartmax_EPS Governor
wget https://github.com/mady51/gzosp-base/commit/b70dde38612f9669ef3030e1e45ebd7e9176a037.patch -O - | git am

##

#
## alucard gov
#

# Drivers: cpufreq: fix for Alucard gov freqs stuck allways at max
wget https://github.com/mady51/gzosp-base/commit/148ba5d0b50d8589461a131f97e499190dc13d71.patch -O - | git am

# Drivers: cpufreq: Add Alucard Governor
wget https://github.com/mady51/gzosp-base/commit/6118639bdd4203579b2b99cf98df8303294f00a4.patch -O - | git am

# Drivers: cpufreq: fix for Alucard gov freqs stuck allways at max
wget https://github.com/mady51/gzosp-base/commit/eb9716580d4433532c8d363d656233b0faa0696c.patch -O - | git am

# defconfig: enable alucard gov
wget https://github.com/mady51/gzosp-base/commit/7c85eaf03e7ee15f720e0abc2965d20e6b2d1349.patch -O - | git am

##

#
## state notifier
#

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
wget https://github.com/mady51/gzosp-base/commit/7fe4633c72d87182be44f889ff60bad301e1ccb3.patch -O - | git am

##

# Decrease time to enter sleep [Pafcholini]
wget https://github.com/mady51/gzosp-base/commit/5d96a1c9c743d01188a6edfbdc52b8198c9ed2c5.patch -O - | git am


popd

read -p "Press ENTER..."

##
# end of kernel picks
##

# sepolicy: allow ViPER4Android in enforcing mode
pushd system/sepolicy
wget https://github.com/mcdachpappe/android_system_sepolicy/commit/f3699c7d3a27a9f2c992f91ca9af2a658375a68e.patch -O - | git am
popd 

read -p "Press ENTER..."
