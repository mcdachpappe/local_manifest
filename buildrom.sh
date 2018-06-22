#!/bin/bash

# setting up ccache
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

# make sure jack-server is restarted in TMP
prebuilts/sdk/tools/jack-admin kill-server
export ANDROID_JACK_VM_ARGS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx6g"
export JACK_SERVER_VM_ARGUMENTS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx6g"

# we want all compiler messages in english
export LANG=C

# set up the environment (variables and functions)
source build/envsetup.sh

# clean the out dir
make clean

# fire up the building process and also log stdout
# and stderrout
brunch oneplus3 2>&1 | tee make.log

# remove all temp directories
rm -r ${TMP}
