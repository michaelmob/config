#!/usr/bin/env bash

# shortcuts
alias ls='ls --color=auto'
alias l='ls -la'

# git
alias gs='git status'
alias gd='git diff HEAD'

# apt
alias aptu='sudo apt update && sudo apt upgrade'
alias apti='sudo apt install'

# systemctl
alias sss='sudo systemctl status'
alias ss='sudo systemctl'

# rc
alias bashrc='vim-quad ~/.bash_profile ~/.bashrc ~/.bash_aliases ~/.bash_functions'
alias vimrc='vim -o ~/.vimrc ~/.vsnvimrc'
alias tmuxrc='vim -o ~/.tmuxp.yml ~/.tmux.conf'
