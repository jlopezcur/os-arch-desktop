#!/bin/sh

dialog --msgbox "Kloder awesome installer!" 0 0

dialog --checklist "Select:" 0 0 0 \
  "Kernel" "linux-zen" on \
  "VCS" "git git-lfs tip" on \
  "Utils" "opendoas stow fzf ripgrep exa bat" on \
  "Security" "ufw" on \
  "Shell" "dash fish fisher zsh byobu" on \
  "Prompt" "starship" on \
  "Terminal Emulator" "alacritty kitty" on \
  "Languages" "rust tokei" on \
  "Window Manager" "sway polkit-gnome" on \
  "Bar" "waybar" on \
  "Locker" "swaylock" on \
  "Idle" "swayidle" on \
  "Ambiance" "gammastep swaybg" on \
  "Notifications" "mako" on \
  "Agenda" "calcurse" on \
  "Record" "wf-recorder slurp grim ffmpeg obs-studio asciinema" on \
  "Sound" "pipewire libpipewire02 pipewire-alsa pipewire-pulse" on \
  "Launcher" "wofi bemenu" on \
  "Fonts" "noto-fonts-emoji" on \
  "Editor" "neovim" on \
  "Viewers" "zathura sxiv" on \
  "Graphics" "inkscape gimp" on \
  "3D" "blender" on \
  "Video" "mpv" on \
  "Mail" "neomutt" on \
  "Music" "cmus mp3info" on \
  "Chat" "weechat" on \
  "Password Manager" "gopass" on \
  "Browser" "qutebrowser chromium" on \
  "Monitor" "btop kmon procs termshark" on \
  "News" "newsboat" on \
  "Others" "scrcpy" on \
