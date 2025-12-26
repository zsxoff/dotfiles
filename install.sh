#!/bin/sh

OS_TYPE=$(uname -s)
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# ZSH
ln -s "${SCRIPT_DIR}/.zshrc" "${HOME}/.zshrc"

# Config
mkdir -p "${HOME}"/.config

for cfg in alacritty kitty nvim zed; do
    ln -s "${SCRIPT_DIR}/$cfg" "${HOME}/.config/$cfg"
done

# Linux
case "$OS_TYPE" in
Linux)
    # Fonts
    ln -s "${SCRIPT_DIR}"/.fonts.conf "${HOME}"/.fonts.conf

    # Xresources
    ln -s "${SCRIPT_DIR}"/.Xresources "${HOME}"/.Xresources

    # xsettingsd
    ln -s "${SCRIPT_DIR}"/.xsettingsd "${HOME}"/.xsettingsd

    # Labwc
    ln -s "${SCRIPT_DIR}"/labwc "${HOME}"/.config/labwc
    ;;
esac

# # Visual Studio Code
case "$OS_TYPE" in
Darwin)
    VSCODE_DIR="${HOME}/Library/Application Support/Code/User"
    ;;
Linux)
    VSCODE_DIR="${HOME}/.config/Code/User"
    ;;
*)
    VSCODE_DIR=""
    ;;
esac

if [ -n "$VSCODE_DIR" ]; then
    mkdir -p "$VSCODE_DIR" && ln -s "${SCRIPT_DIR}/Code/User/settings.json" "$VSCODE_DIR/settings.json"
fi
