#!/bin/sh

cd

# install windows manager
paru -S \
  waybar sway polkit-gnome \
  swayidle swaylock \
  pipewire libpipewire02 pipewire-alsa pipewire-pulse \
  gammastep swaybg mpvpaper \
  mako \
  bemenu wofi sway-launcher-desktop \
  noto-fonts-emoji \
  lxappearance \
  --noconfirm

# wallpapers
git clone git@github.com:jlopezcur/wallpapers.git

# default configurations
if [! -d dotfiles ]; then
  git clone git@github.com:jlopezcur/dotfiles.git
fi
stow -vt ~ dotfiles/sway 
stow -vt ~ dotfiles/waybar 
stow -vt ~ dotfiles/mako
stow -vt ~ dotfiles/swaylock
stow -vt ~ dotfiles/scripts
