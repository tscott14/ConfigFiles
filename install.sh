#!/bin/bash

# Set standard XDG paths
[ -z "$XDG_HOME_DIR" ] 	&& XDG_HOME_DIR="$HOME"
[ -z "$XDG_DESKTOP_DIR" ] 	&& XDG_DESKTOP_DIR="$XDG_HOME_DIR/Desktop"
[ -z "$XDG_DOWNLOAD_DIR" ] 	&& XDG_DOWNLOAD_DIR="$XDG_HOME_DIR/Downloads"
[ -z "$XDG_TEMPLATES_DIR" ] 	&& XDG_TEMPLATES_DIR="$XDG_HOME_DIR/Templates"
[ -z "$XDG_PUBLICSHARE_DIR" ] 	&& XDG_PUBLICSHARE_DIR="$XDG_HOME_DIR/Public"
[ -z "$XDG_DOCUMENTS_DIR" ] 	&& XDG_DOCUMENTS_DIR="$XDG_HOME_DIR/Documents"
[ -z "$XDG_MUSIC_DIR" ] 	&& XDG_MUSIC_DIR="$XDG_HOME_DIR/Music"
[ -z "$XDG_PICTURES_DIR" ] 	&& XDG_PICTURES_DIR="$XDG_HOME_DIR/Pictures"
[ -z "$XDG_VIDEOS_DIR" ] 	&& XDG_VIDEOS_DIR="$XDG_HOME_DIR/Videos"

# Set other XDG paths
[ -z "$XDG_DATA_HOME" ] 	&& XDG_DATA_HOME=${XDG_DATA_HOME:="$XDG_HOME_DIR/.local/share"}
[ -z "$XDG_CACHE_HOME" ] 	&& XDG_CACHE_HOME=${XDG_CACHE_HOME:="$XDG_HOME_DIR/.cache"}
[ -z "$XDG_CONFIG_HOME" ] 	&& XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$XDG_HOME_DIR/.config"}

ZSH_HISTORY_PATH="$XDG_CACHE_HOME/zsh/"

# Create zsh history file.
mkdir -p "$ZSH_HISTORY_PATH"
[ ! -e "$ZSH_HISTORY_PATH/zhistory" ] && touch "$ZSH_HISTORY_PATH/zhistory"


# Copy the .zshrc and associated files to ~/.config
[ -e "$XDG_CONFIG_HOME/zsh" ] && mv "$XDG_CONFIG_HOME/zsh" "$XDG_CONFIG_HOME/zsh.$RANDOM.old"
cp -r "./zsh" "$XDG_CONFIG_HOME/"

# Copy the zshenv to home
[ -e "$XDG_HOME_DIR/.zshenv" ] && mv "$XDG_HOME_DIR/.zshenv" "$XDG_HOME_DIR/.zshenv.$RANDOM.old"
cp -r "./.zshenv" "$HOME/"

# Copy the orthofetch theme wrapper to ~/.config
[ -e "$XDG_CONFIG_HOME/orthofetch" ] && mv "$XDG_CONFIG_HOME/orthofetch" "$XDG_CONFIG_HOME/orthofetch.$RANDOM.old"
cp -r "./orthofetch" "$XDG_CONFIG_HOME/"

