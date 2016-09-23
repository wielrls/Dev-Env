#!/bin/sh

#
# Setup:
# Add the following line to ~/.bashrc
# source "$PATH_TO_HERE/bash_config.sh"
#

#
# Command prompt
#

# Courtesy https://coderwall.com/p/fasnya/add-git-branch-name-to-bash-prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

#
# Useful aliases
#
alias gg='git grep -n'
alias nr='npm run'
alias v='vim'

if [[ `uname` == 'Darwin' ]]; then
  alias ls='ls -G'
else
  alias ls='ls --color=auto'
fi

