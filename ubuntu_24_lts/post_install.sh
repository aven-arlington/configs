#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Run with sudo... exiting"
  exit
fi

# Update default editor and terminal
update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /snap/alacritty/current/bin/alacritty 50
update-alternatives --auto x-terminal-emulator
update-alternatives --install /usr/bin/editor editor /snap/nvim/current/bin/nvim-wrapper 50
update-alternatives --auto editor
update-alternatives --install /usr/bin/vim vim /snap/nvim/current/bin/nvim-wrapper 50
update-alternatives --auto vim
update-alternatives --install /usr/bin/vi vi /snap/nvim/current/bin/nvim-wrapper 50
update-alternatives --auto vi

# Increase sudo timeout
printf "To increase the sudo timeout...\nRun the command:\nsudo visudo -f /etc/sudoers.d/<user_name>\nand then add the line:\nDefaults timestamp_timeout=<number in minutes>\n"