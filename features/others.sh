#!/bin/sh

paru -S \
  scrcpy \
  tokei \
  --noconfirm

# default configurations
if [! -d dotfiles ]; then
  git clone git@github.com:jlopezcur/dotfiles.git
fi
stow -vt ~ dotfiles/scrcpy
