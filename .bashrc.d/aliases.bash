#!/usr/bin/env bash

# shortcuts
alias ls='ls --color=auto'
alias l='ls -la'

# git
alias gs='git status'
alias gd='git diff HEAD'

# apt
alias au='sudo apt update && sudo apt upgrade'
alias ai='sudo apt install'
alias as='apt search'

# dnf
alias di='sudo dnf install'
alias ds='dnf search'

# systemctl
alias sss='sudo systemctl status'
alias ss='sudo systemctl'

# rc
alias bashrc='vim-quad ~/.bash_profile ~/.bashrc ~/.bash_aliases ~/.bash_functions'
alias vimrc='vim -O ~/.vimrc ~/.vsnvimrc'
alias tmuxrc='vim -O ~/.tmuxp.yml ~/.tmux.conf'

alias clip='xclip -selection clipboard'
alias c='clear'
