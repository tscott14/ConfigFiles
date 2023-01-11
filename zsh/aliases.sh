#! /bin/bash

# Install basic programs
[ -z "$(command -v vim)" ] && yay --noconfirm -S vim
[ -z "$(command -v nvim)" ] && yay --noconfirm -S neovim
[ -z "$(command -v bat)" ]  && yay --noconfirm -S bat
[ -z "$(command -v htop)" ] && yay --noconfirm -S htop
[ -z "$(command -v exa)" ] && yay --noconfirm -S exa

# Set the edit to EDITOR 
alias edit="$EDITOR"

# Various substitutes to make  the terminal look nicer.
alias cat="bat"
alias top="htop"

# Changing "ls" to "exa"
alias ll='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ls='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Adding flags to prevent mistakes
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# Workspace related redirect
alias ws="cd $XDG_WORKSPACE_DIR"

# Rickroll
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

# Set personal theming for neofetch
alias orthofetch="$XDG_CONFIG_HOME/orthofetch/orthofetch.sh"
