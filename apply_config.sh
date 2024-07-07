#!/bin/bash
# store the current dir
CUR_DIR=$(pwd)
echo $CUR_DIR
# Store the default .config file location
CFG=$HOME/.config
echo "Copying configuration files from the repository into ~/.config..."

# Neovim configuration
NVIM="/nvim"
NVIM_CFG=$CUR_DIR$NVIM
printf "Removing: %s\n" $CFG$NVIM
rm -rf $CFG$NVIM
printf "Copy: %s \nInto: %s\n" $NVIM_CFG $CFG
cp -r $NVIM_CFG $CFG

# Alacritty configuration
ALACRITTY="/alacritty"
ALACRITTY_CFG=$CUR_DIR$ALACRITTY
printf "Removing: %s\n" $CFG$ALACRITTY
rm -rf $CFG$ALACRITTY
printf "Copy: %s \nInto: %s\n" $ALACRITTY_CFG $CFG
cp -r $ALACRITTY_CFG $CFG

# Zellij configuration
ZELLIJ="/zellij"
ZELLIJ_CFG=$CUR_DIR$ZELLIJ
printf "Removing: %s\n" $CFG$ZELLIJ
rm -rf $CFG$ZELLIJ
printf "Copy: %s \nInto: %s\n" $ZELLIJ_CFG $CFG
cp -r $ZELLIJ_CFG $CFG

# lets get back to the CUR_DIR
cd $CUR_DIR

echo "Complete!"
