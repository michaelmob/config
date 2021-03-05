#!/usr/bin/env bash
alias s='source ~/.mike/.bashrc && clear'

alias vim='nvim -u ~/.mike/.vimrc'
alias tmux='tmux -f ~/.mike/.tmux.conf'

alias bashrc='vim -p ~/.mike/.bashrc ~/.mike/.bash_aliases ~/.mike/.bash_functions'
alias tmuxrc='vim -o ~/.mike/.tmux.conf'

alias ls='ls --color=auto'
alias l='ls -lh'
alias ll='ls -lah'
alias lt='du -sh * | sort -h'

alias mkdir='mkdir -pv'
alias cpv='rsync -ah --info=progress2'
alias tcn='mv --force -t ~/.local/share/Trash '

alias ports='netstat -tulanp'
alias mem='ps auxf | sort -nr -k 4 | head -10'
alias cpu='ps auxf | sort -nr -k 3 | head -10'

alias +x='chmod +x'

alias please='sudo $(fc -ln -1)'
alias yank='xclip -sel clip'
