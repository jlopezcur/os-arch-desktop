#!/bin/sh

action=0

while [ $action -ne 3 ]
do

  action=$(dialog --stdout --no-tags --menu "Menu:" 0 0 0 \
    1 "Install required packages" \
    2 "Install software" \
    3 "Exit")

  # install required packages
  if [ $action -eq 1 ]
  then
    # ./features/required.sh
    echo "executing: ./features/required.sh"
    exit 0
  fi

  # install software
  if [ $action -eq 2 ]
  then

    modules=$(dialog --stdout --no-tags --checklist "Select:" 0 0 0 \
      "kernel" "Kernel" on \
      "system" "System" on \
      "vcs" "VCS" on \
      "security" "Security" on \
      "terminal" "Terminal" on \
      "wm" "Window Manager" on \
      "fm" "File Manager" on \
      "agenda" "Agenda" on \
      "recording" "Recording" on \
      "editor" "Editor" on \
      "viewers" "Viewers" on \
      "design" "Design" on \
      "mail" "Mail" on \
      "music" "Music" on \
      "chat" "Chat" on \
      "browsers" "Browsers" on \
      "node" "Node" on \
      "rust" "Rust" on \
      "utils" "Utils" on \
      "others" "Others" on)

    # install features
    readarray -d " " -t mods<<<"$modules"
    for mod in "${mods[@]}"
    do
      echo "executing: ./features/$mod.sh"
    done
    exit 0

  fi

done


clear
