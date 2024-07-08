#!/bin/bash

sudo echo

sudo cp ~/dots/conf/pacman.conf /etc/pacman.conf

sudo pacman -Sy nvidia nvidia-lts \
	linux-headers \
	nvidia-utils lib32-nvidia-utils \
	egl-wayland \
	libva-nvidia-driver

sudo cp ~/dots/conf/mkinitcpio.conf /etc/mkinitcpio.conf
sudo cp ~/dots/conf/nvidia.conf /etc/modprobe.d/nvidia.conf

sudo mkinitcpio -P


