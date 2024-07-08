#!/bin/bash
echo "SETUP - Installing packages..."
sudo pacman -Sy hyprland \
	kitty cool-retro-term \
	tmux \
	rofi-wayland \
	dolphin	\
	swww \
	xdg-desktop-portal-hyprland \
	pipewire \
	wireplumber \
	wl-clipboard \
	github-cli
yay -Sy cava
echo
