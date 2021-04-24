#!/usr/bin/env bash
[ "$PATH" != *"~/.bin"* ] && export PATH="~/.bin:$PATH"

# prompt - http://bashrcgenerator.com
export PS1="\[\033[38;5;14m\]\u\[$(tput sgr0)\]\[\033[38;5;10m\]@\[$(tput sgr0)\]\h:\[$(tput sgr0)\]\[\033[38;5;9m\]\w\[$(tput sgr0)\]\\$ \[$(tput sgr0)\]"
export MIKE=true

# defaults
export EDITOR=vim
export FILEMANAGER=nnn

[ -f ~/.bash_functions ] && source ~/.bash_functions
[ -f ~/.bash_aliases ] && source ~/.bash_aliases
