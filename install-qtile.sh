#!/usr/bin/bash
# Installs necessary packages
sudo pacman -Syu qtile rofi discord steam neofetch git feh cmatrix atom exa

# Install yay AUR helper
cd /opt
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R tecmint:tecmint ./yay-git
cd yay-git
makepkg -si

# Install bash prompt Starship
yay -S starship

# Cd into home directory and make directory path for wallpapers
cd ~/ && mkdir desktop-essential-files/wallpapers

# Cd into repo directory and rename bashrc file
cd ~/manjaro-starter & mv bashrc .bashrc

# Move included wallpaper into wallpapers directory
mv sos-wallpaper.jpg ~/desktop-essential-files/wallpapers

# Move config file into proper location
mv config.py ~/.config/qtile

# Moves new .bashrc file into proper location
mv .bashrc ~/
