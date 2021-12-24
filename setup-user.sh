#!/usr/bin/sh

# Move to user folder
cd

# Install AUR package manager helper
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
exit
cd ..
rm -rf paru

# Install AUR packages
paru -S \
  lf-bin \
  slack-wayland \
  brave-bin \
  slides-bin \
  glow-bin \
  mpvpaper \
  sway-launcher-desktop \
  --noconfirm

# Clone dotfiles
git clone https://github.com/jlopezcur/dotfiles
cd dotfiles
stow -vt ~ fish             # Shell
stow -vt ~ starship         # Makeup for shell & much more
stow -vt ~ git              # Git
stow -vt ~ sway             # Window manager
stow -vt ~ waybar           # System bar
stow -vt ~ mako             # Notifications
stow -vt ~ swaylock         # Locker
stow -vt ~ lf               # File manager
stow -vt ~ alacritty        # Terminal
stow -vt ~ nvim             # Text editor
stow -vt ~ qutebrowser      # Primary browsers
stow -vt ~ brave            # Second browser
stow -vt ~ chromium         # Third browser
stow -vt ~ newsboat         # Newsboat
stow -vt ~ zathura          # PDF Reader
stow -vt ~ scrcpy           # Mobile viewer
stow -vt ~ btop             # Process monitor
stow -vt ~ neomutt          # Email client
stow -vt ~ scripts          # Custom scripts
stow -vt ~ sxiv             # Image viewer
stow -vt ~ termshark        # Packet analyzer
stow -vt ~ calcurse         # Calendar manager
stow -vt ~ weechat          # IRC

# start a terminal

fish

