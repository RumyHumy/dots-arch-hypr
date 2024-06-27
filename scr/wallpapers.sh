#!/bin/bash
wallpaper_index=$1

cd ~
wallpaper_folder='dots/res/walls'
wallpaper=$wallpaper_folder"/${wallpaper_index}"
echo "Wallpaper: "$wallpaper

# swww
echo "Initializing swww..."
swww-daemon --format xrgb & disown
sleep 0.5

# swww startup
echo "Setuping wallpaper..."
swww img $wallpaper --transition-type=wipe --transition-step=1

sleep 2
