#!/bin/sh

mount -o rw,remount /
SCRIPT_DIRECTORY="$(dirname $(realpath "$0"))"

# install entware
source $SCRIPT_DIRECTORY/entware-install.sh

# set screen to maximum brightness
source $SCRIPT_DIRECTORY/set-max-screen-brightness.sh
