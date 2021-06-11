#!/bin/sh

#
# Setup:
# Add the following line to ~/.zshrc
# source "$PATH_TO_HERE/zsh_config.sh"
#

#
# Configuration
#
setopt AUTO_CD
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
setopt EXTENDED_HISTORY
setopt SHARE_HISTORY
setopt APPEND_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt CORRECT
setopt CORRECT_ALL

#
# Useful aliases
#
alias less='less -R'
alias g='git'
alias gg='git grep -n'
alias v='vim'
alias y='yarn'

if [[ `uname` == 'Darwin' ]]; then
  alias ls='ls -G'
else
  alias ls='ls --color=auto'
fi

