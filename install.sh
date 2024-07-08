#!/bin/bash
# Don't run if root
if [ "$EUID" == 0 ]
	then echo "SETUP - You're not supposed to run this script as a root!"
	exit
fi

cd ~/dots/scr

$pwd/setup-yay
$pwd/setup-pkg
$pwd/setup-audio
$pwd/setup-gh
$pwd/setup-nvidia
$pwd/update.sh
