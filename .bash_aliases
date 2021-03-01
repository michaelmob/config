#!/usr/bin/env bash
alias s='source ~/.mike/.bashrc && clear'

# programs
alias vim='nvim -u ~/.mike/.vimrc'
alias tmux='tmux -f ~/.mike/.tmux.conf'

# shortcuts
alias mkdir='mkdir -pv'

# configs
alias bashrc='vim -o ~/.mike/.bashrc ~/.mike/.bash_aliases ~/.mike/.bash_functions'
alias tmuxrc='vim -o ~/.mike/.tmux.conf'

# directories
alias ls='ls --color=auto'
alias l='ls -lh'
alias ll='ls -lah'
alias lt='du -sh * | sort -h'

# files
alias cpv='rsync -ah --info=progress2'
alias tcn='mv --force -t ~/.local/share/Trash '
