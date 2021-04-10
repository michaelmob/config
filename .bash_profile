#!/usr/bin/env bash
[ "$PATH" != *"~/.bin"* ] && export PATH="~/.bin:$PATH"

# prompt - http://bashrcgenerator.com
export PS1="\[\033[38;5;14m\]\u\[$(tput sgr0)\]\[\033[38;5;10m\]@\[$(tput sgr0)\]\h:\[$(tput sgr0)\]\[\033[38;5;9m\]\w\[$(tput sgr0)\]\\$ \[$(tput sgr0)\]"

# defaults
export EDITOR=vim
export FILEMANAGER=nnn

# imports
[ -f ~/.bashrc ] && source ~/.bashrc
