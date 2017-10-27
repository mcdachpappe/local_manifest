#!/bin/bash

RED="\033[01;31m"
RESTORE="\033[0m"

rm -r ./out

repo sync -j$( nproc --all ) --force-sync -c --no-clone-bundle --no-tags --optimized-fetch --prune

repo forall -c git reset --hard
repo forall -c git clean -f

repo sync -j$( nproc --all ) --prune -d

repo status

echo ""
echo -e ${RED}"done"${RESTORE}
echo ""
