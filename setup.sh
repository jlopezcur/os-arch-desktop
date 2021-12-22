#!/usr/bin/sh

# Upgrade the system

pacman -Syyu --noconfirm
pacman -S --needed base-devel --noconfirm
pacman -S git git-lfs --noconfirm

# Install package manager

git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..

# Install all system

paru -S \
  git-lfs git \
  neovim \
  neomutt \
  lf \
  fish

# Clone dotfiles

git clone https://github.com/jlopezcur/dotfiles

