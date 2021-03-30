#!/usr/bin/env bash
alias r='n -H ~/.local/scripts'
alias s='source ~/.bashrc && clear'
alias c='clear'

alias bashrc='vim -o ~/.bashrc ~/.bash_aliases ~/.bash_functions'
alias bashrc-tabs='vim -p ~/.bashrc ~/.bash_aliases ~/.bash_functions'
alias tmuxrc='vim -o ~/.tmux.conf'
alias vimrc='vim -p ~/.vimrc'

alias ls='ls --color=auto -a'
alias l='ls -ah'
alias ll='ls -lah'
alias lt='du -sh * | sort -h'

# utilities
alias archive='tar --create --gzip --verbose --file'
alias mkdir='mkdir -p'
alias cpv='rsync -ah --info=progress2'
alias trash='mv --force -t ~/.local/share/Trash '

# sys stats
alias ports='netstat -tulanp'
alias mem='ps auxf | sort -nr -k 4 | head -10'
alias cpu='ps auxf | sort -nr -k 3 | head -10'

# permissions
alias please='sudo $(fc -ln -1)'
alias +x='chmod +x'

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
alias g='git'
alias gs='git status'
alias gd='git diff HEAD'

# flatpak
alias marker='flatpak run com.github.fabiocolacio.marker'
alias joplin='flatpak run net.cozic.joplin_desktop'

# devices
alias list-input='ls /dev/input'
