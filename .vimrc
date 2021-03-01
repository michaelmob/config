" vim: ts=2 sw=2 et
map L g_
map H g0

map E gT
map R gt

call mkdir($HOME . "/.mike/.vim/undodir", "p", 0700) 
set undodir=~/.mike/.vim/undodir
set undofile

set background=dark
syntax on
