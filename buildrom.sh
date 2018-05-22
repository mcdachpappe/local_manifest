#!/bin/bash

# if you want to build without using ccache, comment the next 4 lines
export USE_CCACHE=1
export CCACHE_DIR=/mnt/hgfs/Android/.ccache
export CCACHE_MAX_SIZE=15G
ccache -M $CCACHE_MAX_SIZE

# encapsulate the build's temp directory.
# This way it's easier to clean up afterwards
TMP=$(mktemp -dt)
TMPDIR=$TMP
TEMP=$TMP

export TMP TMPDIR TEMP

#make sure jack-server is restarted in TMP
prebuilts/sdk/tools/jack-admin kill-server
export ANDROID_JACK_VM_ARGS="-Xmx6g -Dfile.encoding=UTF-8 -XX:+TieredCompilation"

# we want all compiler messages in English
export LANG=C

# set up the environment (variables and functions)
source build/envsetup.sh

# clean the out dir; comment out, if you want to do a dirty build
make clean

# fire up the building process and also log stdout
# and stderrout
brunch oneplus3 2>&1 | tee make.log

# remove all temp directories
rm -r ${TMP}
