#!/usr/bin/env bash
alias r='nnn -H ~/.local/scripts'
alias s='source ~/.bashrc && clear'
alias c='clear; l'

alias bashrc='vim -o ~/.bashrc ~/.bash_aliases ~/.bash_functions'
alias aliasrc='vim ~/.bash_aliases'
alias bashrc-tabs='vim -p ~/.bashrc ~/.bash_aliases ~/.bash_functions'
alias tmuxrc='vim -o ~/.tmux.conf'
alias vimrc='vim -p ~/.vimrc'
alias keyrc='vim -O ~/.local/share/xkb/xkb_symbols /usr/share/X11/xkb/symbols/us'

alias gbin='nnn ~/.local/bin'
alias glocal='nnn ~/.local'
alias gshare='nnn ~/.local/share'

alias ls='ls --color=auto'
alias l='ls -1Ft'
alias ll='ls -lah'
alias lt='du -sh * | sort -h'

# utilities
alias zip='tar --create --gzip --verbose --file'
alias mkdir='mkdir -p'
alias cpv='rsync -ah --info=progress2'
alias trash='mv --force -t ~/.local/share/Trash '

# sys stats
alias ports='netstat -tulanp'
alias mem='ps auxf | sort -nr -k 4 | head -10'
alias cpu='ps auxf | sort -nr -k 3 | head -10'

# permissions
alias please='sudo $(fc -ln -1)'
alias +x='chmod u+x'

# columns
alias col1='awk "{ print $1 }"'
alias col2='awk "{ print $2 }"'
alias col3='awk "{ print $3 }"'
alias col4='awk "{ print $4 }"'

# clipboard
alias yank='xclip -sel clip'
alias copy='tr -d "\n" | yank'

# net
alias curlp='curl -x http://proxy:8888'
alias getproxyip='curlp https://ipecho.net/plain'
alias getip='curl https://ipecho.net/plain'

# git
alias lg='lazygit'
alias g='git'
alias gs='git status'
alias gd='git diff HEAD'

# flatpak
alias marker='flatpak run com.github.fabiocolacio.marker'
alias joplin='flatpak run net.cozic.joplin_desktop'

# devices
alias list-input='ls /dev/input'

# apt
alias apts='apt search'
alias apti='sudo apt install'
alias aptu='sudo apt update && sudo apt upgrade'
