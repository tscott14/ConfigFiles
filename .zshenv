#! /bin/bash
# Profile file. Runs on login.

# Default programs:
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="brave"

# Set standard XDG paths
export XDG_HOME_DIR="$HOME"
export XDG_DESKTOP_DIR="$XDG_HOME_DIR/Desktop"
export XDG_DOWNLOAD_DIR="$XDG_HOME_DIR/Downloads"
export XDG_TEMPLATES_DIR="$XDG_HOME_DIR/Templates"
export XDG_PUBLICSHARE_DIR="$XDG_HOME_DIR/Public"
export XDG_DOCUMENTS_DIR="$XDG_HOME_DIR/Documents"
export XDG_MUSIC_DIR="$XDG_HOME_DIR/Music"
export XDG_PICTURES_DIR="$XDG_HOME_DIR/Pictures"
export XDG_VIDEOS_DIR="$XDG_HOME_DIR/Videos"

# Set other XDG paths
export XDG_DATA_HOME=${XDG_DATA_HOME:="$XDG_HOME_DIR/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$XDG_HOME_DIR/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$XDG_HOME_DIR/.config"}

# Set user specific XDG paths
export XDG_WORKSPACE_HOME=${XDG_WORKSPACE_DIR:="$XDG_DOCUMENTS_DIR/Workspace"}

# Organize zsh files.
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

source $ZDOTDIR/aliases.sh
source $ZDOTDIR/extract.sh



