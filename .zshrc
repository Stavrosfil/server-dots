# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
# export ZSH="$HOME/.oh-my-zsh"

source $HOME/dotfiles/antigen.zsh

# Export sync script thingy
export already_setup=true

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle git
antigen bundle command-not-found
antigen bundle ael-code/zsh-colored-man-pages
antigen bundle "MichaelAquilina/zsh-you-should-use"

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

# Tell Antigen that you're done.
antigen apply

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# source $ZSH/oh-my-zsh.sh

# GEOMETRY_PROMPT=(geometry_status geometry_path geometry_git) # redefine left prompt
# GEOMETRY_RPROMPT=(geometry_exec_time pwd)                    # append exec_time and pwd right prompt

# Custom cd functinallity
custom_cd() {
    cd $1
    ls
}
alias cd="custom_cd"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

export PATH="$PATH:/usr/sbin"
export PATH="$HOME/tools/cubemx/STM32CubeMX/:$PATH"
export PATH="$HOME/tools/android-studio/bin:$PATH"
export PATH="$HOME/tools/flutter/bin:$PATH"
export PATH="$HOME/.scripts:$PATH"
export PATH="$HOME/tools/flutter/bin:$PATH"
export PATH="${PATH}:${HOME}/.local/bin/"
# export JAVA_HOME="${HOME}/tools/jdk-13/"
export ANDROID_HOME="$HOME/android-sdk"
# export IDF_PATH="$HOME/esp/esp-idf"
export IDF_PATH="$HOME/esp/ESP8266_RTOS_SDK"
export TERM=xterm-256color
# export TERM=xterm-kitty
# export TERM=xterm

# Aliases
alias cl="clear"
# alias cubemx="tools/cubemx/STM32CubeMX"
alias zcon="vi $HOME/.zshrc"
alias cfi="vi $HOME/.config/i3/config"
alias ser="ssh stavrosfil@23.97.181.92 -p 1999"
alias dot="$HOME/repos/dotfiles/"
alias userpackages="comm -23 <(apt-mark showmanual | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u)"
alias sync="bash $HOME/repos/dotfiles/sync.sh"
alias pip="pip3"
alias mexec="chmod a+x"
alias vi="vim"

### file browsing
# list files
alias ll="ls -Ahl"

# fast find
ff() {
    find . -name "$1"
}

### file manipulation
# remove
alias rm="rm -rfv"
alias rmi="rm -rfvi"

# copy
alias cp="cp -rfv"

# move
alias mv="mv -fv"
alias mvi="mv -fvi"

# History directory navigation
d='dirs -v | head -10'
1='cd -'
2='cd -2'
3='cd -3'
4='cd -4'
5='cd -5'
6='cd -6'
7='cd -7'
8='cd -8'
9='cd -9'

wal-tile() {
    wal -n -i "$@"
    feh --bg-tile "$(<"${HOME}/.cache/wal/wal")"
}

# Open files with zathura and disown
za() {
    zathura $1 &
    disown
    kill $PPID
}

# . $HOME/esp/esp-idf/export.sh
