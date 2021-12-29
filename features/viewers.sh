#!/bin/sh

paru -S \
  newsboat \
  zathura \
  sxiv \
  mpv \
  slides-bin \
  glow-bin \
  --noconfirm

# default configurations
if [! -d dotfiles ]; then
  git clone git@github.com:jlopezcur/dotfiles.git
fi
stow -vt ~ dotfiles/newsboat 
stow -vt ~ dotfiles/zathura 
stow -vt ~ dotfiles/sxiv 
stow -vt ~ dotfiles/mpv 
