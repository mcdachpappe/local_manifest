#!/bin/bash


. build/envsetup.sh

read -p "Press ENTER..."


pushd frameworks/base
# Enable Always On Display regardless if its "ready" or not
wget https://github.com/akhilnarang/oreo_frameworks_base/commit/8f52b5224f368cd380794d7022edc52372523aed.patch -O - | git am

# Allow adjusting screen density to smaller sizes.
wget https://github.com/akhilnarang/oreo_frameworks_base/commit/31e13d91b8f3e47fb16e679c49a03040385eae02.patch -O - | git am

# Power menu options
wget https://github.com/akhilnarang/oreo_frameworks_base/commit/fa06628736331c8c9c13decd1a9d81706e5b2ecd.patch -O - | git am

# GlobalActions: Confirm power off
wget https://github.com/akhilnarang/oreo_frameworks_base/commit/b308bf7c609726c4d1f4798370e75f02b816e42d.patch -O - | git am

# Ringtone audio focus
wget https://github.com/akhilnarang/oreo_frameworks_base/commit/9179989b4be0a97f30c7b8b3a88eae4429ecadb7.patch -O - | git am

# GlobalScreenshot: disable the sound played when a screenshot is taken
wget https://github.com/akhilnarang/oreo_frameworks_base/commit/3f7b854a3831eb294a07ec9c4dd083548243bad2.patch -O - | git am
popd

read -p "Press ENTER..."


pushd system/core
# init: don't reboot to bootloader on panic
wget https://github.com/akhilnarang/oreo_system_core/commit/d38bebb652fa095c05a4f493831bf1ddd025f600.patch -O - | git am

# healthd: cover devices that have voltage_max file with value of 0
wget https://github.com/akhilnarang/oreo_system_core/commit/541ce22dacb7593ec8250b1d5ae4a1c4231a45de.patch -O - | git am

# healthd: Reinitialize mChargerNames for every battery update
wget https://github.com/akhilnarang/oreo_system_core/commit/df6266dd4b31d12801688fa139234ffc9b0a5049.patch -O - | git am
popd

read -p "Press ENTER..."


pushd development
# cmds: fix compilation error
wget https://github.com/ujwalp15/android_development/commit/5a4f4ad55e59eacde64f866cf7a2710ad42f6fec.patch -O - | git am
popd

read -p "Press ENTER..."


#. cherry-pick.sh
