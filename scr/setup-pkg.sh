#!/bin/bash
echo "SETUP - Installing packages..."
sudo pacman -Sy hyprland \
	kitty cool-retro-term \
	tmux \
	zsh \
	rofi-wayland \
	dolphin	\
	swww \
	xdg-desktop-portal-hyprland \
	pipewire \
	wireplumber \
	wl-clipboard \
	github-cli \
	openssh \
	tree
yay -Sy cava
echo
