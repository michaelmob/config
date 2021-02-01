#!/usr/bin/env bash
export TERM='xterm'
export EDITOR='vim'
export PATH="~/.mike/bin:$PATH"

alias tmux='tmux.appimage'
alias vim='vim -u ~/.mike/.vimrc'

alias gs='git status'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash