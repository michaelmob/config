#!/usr/bin/env bash
export PATH="~/.mike/bin:~/.mike/scripts:$PATH"
export TERM='xterm'
export EDITOR='vim'
export PS1="\[\033[38;5;9m\]\u\[$(tput sgr0)\]\[\033[38;5;10m\]@\[$(tput sgr0)\]\h:\[$(tput sgr0)\]\[\033[38;5;14m\]\w\[$(tput sgr0)\]\\$ \[$(tput sgr0)\]"

source ~/.mike/.bash_aliases
source ~/.mike/.bash_functions

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
