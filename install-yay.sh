#!/bin/bash

sudo pacman -Syu --noconfirm
sudo pacman -S --needed --noconfirm base-devel git
mkdir ~/archutils-yay
git clone https://aur.archlinux.org/yay.git ~/archutils-yay
cd ~/archutils-yay
makepkg -si --noconfirm --skippgpcheck --noprogressbar --needed
cd ~
rm -rf ~/archutils-yay
echo "yay has been installed!"
yay --version
