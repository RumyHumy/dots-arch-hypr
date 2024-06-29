echo 'Uncomment "multilib" line in /etc/pacman.conf'
read -s -n 1
sudo vim /etc/pacman.conf
sudo pacman -Sy
sudo pacman -S nvidia-dkms nvidia-utils lib32-nvidia-utils egl-wayland libva-nvidia-driver

echo "Write this in file:"
echo "MODULES=(... nvidia nvidia_modeset nvidia_uvm nvidia_drm ...)"
read -s -n 1
sudo vim /etc/mkinitcpio.conf

echo "options nvidia_drm modeset=1 fbdev=" > /etc/modprobe.d/nvidia.conf

sudo mkinitcpio -P

echo "Write this in file:"
echo "env = LIBVA_DRIVER_NAME,nvidia"
echo "env = XDG_SESSION_TUPE,wayland"
echo "env = GBM_BACKEND,nvidia-drm"
echo "env = __GLX_VENDOR_LIBRARY_NAME,nvidia"
echo "cursor {"
echo "    no_hardware_cursors = true"
echo "}"
read -s -n 1
vim /dots/conf/hypr/hyprland.conf

~/dots/scr/update.sh

reboot
