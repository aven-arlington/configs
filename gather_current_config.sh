#!/bin/bash
set -v
# store the current dir
CUR_DIR=$(pwd)

# Neovim configuration
NVIM_CFG=$HOME"/.config/nvim"
if [ -d $NVIM_CFG ]; then
  NVIM_DIR=$CUR_DIR"/nvim"
  rm -rf $NVIM_DIR
  cp -r $NVIM_CFG $NVIM_DIR
fi

# Alacritty configuration
ALACRITTY_CFG=$HOME"/.config/alacritty"
if [ -d $ALACRITTY_CFG ]; then
  ALACRITTY_DIR=$CUR_DIR"/alacritty"
  rm -rf $ALACRITTY_DIR
  cp -r $ALACRITTY_CFG $ALACRITTY_DIR
fi

# Zellij configuration
ZELLIJ_CFG=$HOME/.config/zellij
if [ -d $ZELLIJ_CFG ]; then
  ZELLIJ_DIR=$CUR_DIR"/zellij"
  rm -rf $ZELLIJ_DIR
  cp -r $ZELLIJ_CFG $ZELLIJ_DIR
fi

# lets get back to the CUR_DIR
cd $CUR_DIR

echo "Complete!"
