#!/bin/bash
# Don't run if root
if [ "$EUID" == 0 ]
	then echo "SETUP - You're not supposed to run this script as a root!"
	exit
fi

cd ~/dots/scr

./setup-yay.sh
./setup-pkg.sh
./setup-audio.sh
./setup-gh.sh
#./setup-nvidia.sh
./update.sh
