#!/bin/sh

paru -S \
  weechat \
  slack-wayland \
  --noconfirm

# default configurations
if [! -d dotfiles ]; then
  git clone git@github.com:jlopezcur/dotfiles.git
fi
stow -vt ~ dotfiles/weechat 
