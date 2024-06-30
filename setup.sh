#!/bin/bash

# Don't run if root
if [ "$EUID" == 0 ]
	then echo "[RAMI] You're not supposed to run this script as a root!"
	exit
fi

cd ~

# Making directoriesi
echo "[RAMI] Making directories"
if [ ! -d ~/rec ];
then mkdir ~/rec # For recording
fi
echo

# Installing git & github-cli
read -p "Do you want to install git and github-cli? [N,y]: " flag_install_git
if [ ${flag_install_git,,} == "y" ]
then
	echo "[RAMI] Installing git & github-cli..."
	sudo pacman -Sy git github-cli
	echo
fi

# Installing yay
read -p "Do you want to install yay [N,y]: " flag_install_yay
if [ ${flag_install_yay,,} == "y" ]
then		
	if [ ! -f "/bin/yay" ];
	then
		echo "[RAMI] Installing yay..."
		sudo pacman -S --needed git base-devel
		git clone https://aur.archlinux.org/yay.git ~/yay
		cd ~/yay
		makepkg -si
		rmdir -rf ~/yay
	fi
fi

# Installing fonts
read -p "Do you want to install fonts [N,y]: " flag_install_fonts
if [ ${flag_install_fonts,,} == "y" ]
then	
	echo "[RAMI] Installing fonts..."
	sudo pacman -Sy otf-font-awesome noto-fonts noto-fonts-emoji
	echo
fi

# Installing desktop environment
read -p "Do you want to install desktop environment [N,y]: " flag_install_de
if [ ${flag_install_de,,} == "y" ]
then
	echo "[RAMI] Installing Hyprland & other..."
	sudo pacman -Sy hyprland \
		kitty cool-retro-term \
		tmux \
		rofi-wayland \
		dolphin	\
		swww \
		xdg-desktop-portal-hyprland \
		pipewire \
		wireplumber
	yay -Sy cava
	echo
fi

# Audio setup
read -p "Do you want to setup audio systems (PulseAudio, ALSA) [N,y]: " flag_setup_audio
if [ ${flag_setup_audio,,} == "y" ]
then
	echo "[RAMI] Installing Hyprland & other..."
	sudo pacman -Sy \
		pulseaudio \
		alsa-utils
	amixer sset Master 80% unmute
	amixer sset Speaker 80% unmute
	echo
fi

# Authorizing GitHub
read -p "Do you want to login to the GitHub? [N,y]: " flag_gh_auth
if [ ${flag_gh_auth,,} == "y" ]
	then gh auth login
	echo
fi

# Installing nvidia (fuck you) drivers
# echo "[RAMI] Installing nvidia drivers..."
# sudo pacman -Sy nvidia
# nvidia-smi

# Update configs
~/dots/conf/update.sh

# Create "lesgo" in bin to launch Hyprland
sudo cp ~/dots/scr/lesgo /bin

echo "You are good to go!"
