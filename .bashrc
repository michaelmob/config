#!/usr/bin/env sh
export PS1="\[\033[38;5;9m\]\u\[$(tput sgr0)\]\[\033[38;5;10m\]@\[$(tput sgr0)\]\h:\[$(tput sgr0)\]\[\033[38;5;14m\]\w\[$(tput sgr0)\]\\$ \[$(tput sgr0)\]"

[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
  . /usr/share/bash-completion/bash_completion

source ~/.bash_profile
source ~/.bash_aliases
source ~/.bash_functions
