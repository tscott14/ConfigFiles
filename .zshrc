# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Custom Variables
EDITOR=vim

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/zhistory
setopt appendhistory

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi


### ARCHIVE EXTRACTION
# usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;      
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# pacman and yay
#alias pacsyu='sudo pacman -Syyu'                 # update only standard pkgs
#alias yaysua="yay -Sua --noconfirm"              # update only AUR pkgs
#alias yaysyu="yay -Syu --noconfirm"              # update standard pkgs and AUR pkgs
alias unlock="sudo rm /var/lib/pacman/db.lck"    # remove pacman lock
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)' # remove orphaned packages

# yay shortcuts
alias i='yay -S'
alias iy='yay -Sy'

#apt update
#alias apt="sudo apt update && sudo apt "

# install progs if not already installed
[ -z "$(command -v nvim)" ] && yay --noconfirm -S neovim
[ -z "$(command -v bat)" ]  && yay --noconfirm -S bat
[ -z "$(command -v htop)" ] && yay --noconfirm -S htop
[ -z "$(command -v exa)" ] && yay --noconfirm -S exa

# set neovim predacessors to neovim
alias vim="nvim"
alias vi="nvim"

# other aliases
alias cat="bat"
alias top="htop"

# Changing "ls" to "exa"
alias ll='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ls='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'

# Changing Directory shorthands
alias ..='cd ..' 

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# adding flags
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'


## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

alias ws="cd ~/Documents/Workspaces/"

# the terminal rickroll
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

echo ''

function print_orthodox_neofetch() {
	local LOGO_NAMES=('ICXC' 'SlavCross' 'MHTSU')
	local LOGO_COLORS=('13 8 2' '13 4 8 5' '3 13 4 12 5 11')
	local SIZE=${#LOGO_NAMES[@]}
	local INDEX=$(($RANDOM % $SIZE + 1))
	local LOGO_NAME=${LOGO_NAMES[$INDEX]}
	local LOGO_COLOR=${LOGO_COLORS[$INDEX]}
	echo "neofetch --ascii_colors $LOGO_COLOR --ascii ~/.config/neofetch/logos/$LOGO_NAME" | sh
}; print_orthodox_neofetch

export TERM=alacritty
alias config-backup='/usr/bin/git --git-dir=$HOME/.local/share/config-backup --work-tree=$HOME'

