#!/bin/bash

RED="\033[01;31m"
RESTORE="\033[0m"

make clean

repo sync -c -j16 -f --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune

repo forall -c git reset --hard
repo forall -c git clean -f

repo sync -c -j16 --prune -d

repo status

echo -e ${RED}"********"${RESTORE}
echo -e ${RED}"* done *"${RESTORE}
echo -e ${RED}"********"${RESTORE}
