#!/bin/bash

# Audio setup
echo "SETUP - Installing Hyprland & other..."
sudo pacman -Sy \
	pulseaudio \
	alsa-utils
amixer sset Master 80% unmute
amixer sset Speaker 80% unmute
echo
