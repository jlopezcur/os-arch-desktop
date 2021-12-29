#!/bin/sh

# file managers
paru -S \
  lf-bin ranger joshuto xplr nnn \
  --confirm

# default configurations
if [! -d dotfiles ]; then
  git clone git@github.com:jlopezcur/dotfiles.git
fi
stow -vt ~ dotfiles/lf 
