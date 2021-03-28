#!/usr/bin/env bash
alias s='source ~/.mike/.bashrc && clear'
alias c='clear'

alias nvim='nvim.appimage -u ~/.mike/.vimrc'
alias tmux='tmux.appimage -f ~/.mike/.tmux.conf'
alias vim='nvim'
alias fd='fdfind'

alias bashrc='vim -o ~/.mike/.bashrc ~/.mike/.bash_aliases ~/.mike/.bash_functions'
alias tmuxrc='vim -o ~/.mike/.tmux.conf'
alias vimrc='vim -p ~/.mike/.vimrc'
alias run='n ~/.mike/scripts'

alias ls='ls --color=auto'
alias l='ls -h'
alias ll='ls -lah'
alias lt='du -sh * | sort -h'

alias archive='tar --create --gzip --verbose --file'
alias mkdir='mkdir -p'
alias cpv='rsync -ah --info=progress2'
alias trash='mv --force -t ~/.local/share/Trash '

alias ports='netstat -tulanp'
alias mem='ps auxf | sort -nr -k 4 | head -10'
alias cpu='ps auxf | sort -nr -k 3 | head -10'

alias please='sudo $(fc -ln -1)'
alias +x='chmod +x'

alias col1='awk "{ print $1 }"'
alias col2='awk "{ print $2 }"'
alias col3='awk "{ print $3 }"'
alias col4='awk "{ print $4 }"'

alias yank='xclip -sel clip'
alias copy='tr -d "\n" | yank'
alias getip='curl https://ipecho.net/plain | copy'

# git
alias g='git'
alias gs='git status'
alias gd='git diff HEAD'

# flatpak
alias marker='flatpak run com.github.fabiocolacio.marker'
alias joplin='flatpak run net.cozic.joplin_desktop'

# devices
alias list-input='ls /dev/input'
