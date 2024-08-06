#!/bin/sh

# Alacritty
mkdir -p ${HOME}/.config/alacritty/
ln -s ${PWD}/alacritty/alacritty.toml ${HOME}/.config/alacritty/alacritty.toml

# Kitty
mkdir -p ${HOME}/.config/kitty/
ln -s ${PWD}/kitty/kitty.conf ${HOME}/.config/kitty/kitty.conf
ln -s ${PWD}/kitty/current-theme.conf ${HOME}/.config/kitty/current-theme.conf

# Visual Studio Code
if [[ $OSTYPE == 'darwin'* ]]; then
    mkdir -p "${HOME}/Library/Application Support/Code/User/"
    ln -s ${PWD}/Code/User/settings.json "${HOME}/Library/Application Support/Code/User/settings.json"
fi
