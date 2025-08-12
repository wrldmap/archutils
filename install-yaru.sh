#!/bin/bash

sudo pacman -Syu --noconfirm
sudo pacman -S --needed --noconfirm base-devel git
mkdir ~/archutils-yaru
git clone https://aur.archlinux.org/yaru.git ~/archutils-yaru
cd ~/archutils-yaru
makepkg -si --noconfirm --skippgpcheck --noprogressbar --needed
cd ~
rm -rf ~/archutils-yaru
echo "yaru has been installed!"
yaru --version
