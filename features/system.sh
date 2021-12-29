#!/bin/sh

paru -S \
  opendoas \
  stow \
  fzf skim \
  ripgrep \
  du dust du-cli diskonaut \
  bandwhich \
  btop procs kmon termshark \
  bat exa \
  --noconfirm

# default configurations
if [! -d dotfiles ]; then
  git clone git@github.com:jlopezcur/dotfiles.git
fi
stow -vt ~ dotfiles/btop 
stow -vt ~ dotfiles/termshark 
