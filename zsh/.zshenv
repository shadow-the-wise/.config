#==============================================================================
# file: Zsh Env
# Date: 2023-02-07
#==============================================================================

# HOSTTYPE = { Linux | darwin | etc. }
if which uname &>/dev/null; then
  HOSTTYPE=`uname -s`
else
  HOSTTYPE=unknown
fi

export HOSTTYPE

export LANG='en_US.UTF-8'

# Validate .bin directory exists
if [[ -d "$HOME/.local/bin" ]]; then
    export PATH="${PATH:+${PATH}:}/usr/local/bin:$HOME/.local/bin"
fi

# Validate node@16 directory exists
if [[ -d "/usr/local/opt/node@16" ]]; then
    # brew installed node@16
    export PATH="${PATH:+${PATH}:}/usr/local/opt/node@16/bin"
fi

# Validate python3.10 directory exists
if [[ -d "/usr/local/opt/python@3.10" ]]; then
    # brew installed python3.10
    export PATH="${PATH:+${PATH}:}/usr/local/opt/python@3.10/bin"
fi

# XDG Compliant configuration

# Configuration files in $HOME/.config
export XDG_CONFIG_HOME="$HOME/.config"

# Set the cache directory apps will look for
export XDG_CACHE_HOME="$HOME/.cache"

# Neovim data directory shada,site,autoload,pluggins
export XDG_DATA_HOME="$HOME/.local/share"

# Neovim state directory contains data that persists between app restarts
export XDG_DATA_HOME="$HOME/.local/state"

# set the zsh directory
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# XDG Compliant
export SOLARGRAPH_CACHE=$XDG_CACHE_HOME/solargraph

# homebrew no emojis
export HOMEBREW_NO_EMOJI=1
export HOMEBREW_PREFIX="/usr/local";
export HOMEBREW_CELLAR="/usr/local/Cellar";
export HOMEBREW_REPOSITORY="/usr/local/Homebrew";
export HOMEBREW_SHELLENV_PREFIX="/usr/local";

export MANPATH="/usr/local/share/man${MANPATH+:$MANPATH}:";

export LDFLAGS="-L/usr/local/opt/readline/lib"
export CPPFLAGS="-I/usr/local/opt/readline/include"
export PKG_CONFIG_PATH="/usr/local/opt/readline/lib/pkgconfig"
export RBENV_VERSION="3.0.0"

# git env
export GIT_AUTHOR_NAME="shadowchaser04"
export GIT_COMMITTER_NAME="shadowchaser04"
export GIT_AUTHOR_EMAIL="shadowchasing@icloud.com"
export GIT_COMMITTER_EMAIL="shadowchasing@icloud.com"

# if editor is present, set default editor
if [[ -x $(which nvim 2> /dev/null) ]]; then
    export EDITOR="nvim"
    export USE_EDITOR=$EDITOR
    export VISUAL=$EDITOR
else
    export EDITOR="vim"
    export USE_EDITOR=$EDITOR
    export VISUAL=$EDITOR
fi

# Set less options
if [[ -x $(which less 2> /dev/null) ]]; then
    export PAGER="less"

    # basic settings for formatting and to stop line chars.
    export LESS='--quit-if-one-screen --ignore-case --status-column --LONG-PROMPT --RAW-CONTROL-CHARS --HILITE-UNREAD --tabs=4 --no-init --window=-4'

    # prevent less from having a history
    export LESSHISTFILE='-'

    # less pipe is a preprocessor.
    if [[ -x $(which lesspipe 2> /dev/null) ]]; then
        LESSOPEN="| lesspipe %s"
        export LESSOPEN
    fi
fi

# man page piped to vim
export MANPAGER='nvim +Man!'
export MANWIDTH=999

# Esc key reduced lag time
export KEYTIMEOUT=1

# Say how long a command took, if it took more than 30 seconds
export REPORTTIME=30

# e - Directory
# f - Symbolic Link

# b - red
# c - lime green
# f - pink

# turn on colors
export CLICOLOR=1

# lscolors
export LSCOLORS='exfxhxDefxhxhxhxhxcxcx'

