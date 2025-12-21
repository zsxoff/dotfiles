#!/bin/sh

# ZSH
ln -s ${PWD}/.zshrc ${HOME}/.zshrc

# Linux
if [[ $OSTYPE == 'linux'* ]]; then
    # Fonts
    ln -s ${PWD}/.fonts.conf ${HOME}/.fonts.conf

    # Xresources
    ln -s ${PWD}/.Xresources ${HOME}/.Xresources

    # xsettingsd
    ln -s ${PWD}/.xsettingsd ${HOME}/.xsettingsd
fi

# Alacritty
mkdir -p ${HOME}/.config/alacritty/
ln -s ${PWD}/alacritty/alacritty.toml ${HOME}/.config/alacritty/alacritty.toml

# Kitty
mkdir -p ${HOME}/.config/kitty/
ln -s ${PWD}/kitty/kitty.conf ${HOME}/.config/kitty/kitty.conf
ln -s ${PWD}/kitty/current-theme.conf ${HOME}/.config/kitty/current-theme.conf

# Neovim
ln -s ${PWD}/nvim ${HOME}/.config/nvim

# Zed
ln -s ${PWD}/zed ${HOME}/.config/zed

# Visual Studio Code
if [[ $OSTYPE == 'darwin'* ]]; then
  mkdir -p ${HOME}/Library/Application Support/Code/User/
  ln -s ${PWD}/Code/User/settings.json ${HOME}/Library/Application Support/Code/User/settings.json
elif [[ $OSTYPE == 'linux'* ]]; then
  mkdir -p ${HOME}/.config/Code/User/
  ln -s ${PWD}/Code/User/settings.json ${HOME}/.config/Code/User/settings.json
fi
