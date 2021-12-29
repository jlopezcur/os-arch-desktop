#!/bin/sh

paru -S \
  dash fish fisher zsh \
  byobu \
  starship \
  alacritty \
  --noconfirm

# default configurations
if [! -d dotfiles ]; then
  git clone git@github.com:jlopezcur/dotfiles.git
fi
stow -vt ~ dotfiles/fish 
stow -vt ~ dotfiles/starship 
stow -vt ~ dotfiles/alacritty 
