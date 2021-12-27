#!/usr/bin/sh

# Upgrade the system
pacman -Syyu --noconfirm

# Install system dev tools
pacman -S --needed base-devel --noconfirm

# Install main packages
pacman -S \
  linux-zen \
  git git-lfs tig \
  opendoas stow fzf ripgrep exa bat \
  ufw \
  dash fish fisher zsh byobu \
  starship \
  alacritty \
  tokei \
  waybar sway polkit-gnome \
  swayidle swaylock \
  gammastep swaybg \
  mako \
  calcurse \
  wf-recorder slurp grim ffmpeg obs-studio asciinema \
  pipewire libpipewire02 pipewire-alsa pipewire-pulse \
  wofi bemenu \
  noto-fonts-emoji \
  lxappearance \
  neovim \
  zathura sxiv \
  inkscape gimp blender \
  mp3info \
  mpv \
  gopass \
  cmus \
  btop kmon procs termshark \
  newsboat \
  neomutt \
  weechat \
  qutebrowser chromium \
  scrcpy \
  --noconfirm

# Create the main user

useradd -m jlopez -s /bin/fish
# passwd jlopez test
su jlopez -c /setup-user.sh
su jlopez
