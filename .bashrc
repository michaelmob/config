#!/usr/bin/env sh
# vim: ts=2 et
export PS1="\[\033[38;5;9m\]\u\[$(tput sgr0)\]\[\033[38;5;10m\]@\[$(tput sgr0)\]\h:\[$(tput sgr0)\]\[\033[38;5;14m\]\w\[$(tput sgr0)\]\\$ \[$(tput sgr0)\]"

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

source ~/.bash_profile
source ~/.bash_aliases
source ~/.bash_functions
