#!/usr/bin/env bash
[ -f ~/.bash_profile ] && source ~/.bash_profile

# HSTR configuration - add this to ~/.bashrc
shopt -s histappend                        # append new history items to .bash_history
export HISTCONTROL=ignorespace:ignore-dups # leading space hides commands from history
export HISTFILESIZE=10000                  # increase history file size (default is 500)
export HISTSIZE=${HISTFILESIZE}            # increase history size (default is 500)
export HSTR_CONFIG=hicolor                 # get more colors

# ensure synchronization between bash memory and history file
export PROMPT_COMMAND="history -a;history -n;${PROMPT_COMMAND}"

[ -d ~/.bashrc.d ] && for file in ~/.bashrc.d/*.{sh,bash}; do
  source "$file"
done
