#!/bin/sh

pacman -S \
  git git-lfs \
  tig gitui \
  --noconfirm

# default configurations
if [! -d dotfiles ]; then
  git clone git@github.com:jlopezcur/dotfiles.git
fi
stow -vt ~ dotfiles/git 
