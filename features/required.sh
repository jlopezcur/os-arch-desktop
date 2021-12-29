#!/bin/sh

cd

# upgrade the system
sudo pacman -Syyu --noconfirm

# install system dev tools
sudo pacman -S --needed base-devel --noconfirm

# package manager
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
exit
cd ..
# rm -rf paru ???

# vcs
sudo pacman -S git --noconfirm
