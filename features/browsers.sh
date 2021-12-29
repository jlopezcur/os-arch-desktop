#!/bin/sh

paru -S \
  qutebrowser nyxt \
  chromium librewolf brave-bin \
  --noconfirm

# default configurations
if [! -d dotfiles ]; then
  git clone git@github.com:jlopezcur/dotfiles.git
fi
stow -vt ~ dotfiles/qutebrowser 
stow -vt ~ dotfiles/chromium 
stow -vt ~ dotfiles/brave 
