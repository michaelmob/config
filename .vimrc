" vim: ts=2 sw=2 et

syntax on
set background=dark
set number

call mkdir($HOME . "/.mike/.vim/undodir", "p", 0700) 
set undodir=~/.mike/.vim/undodir
set undofile

set nowrap

map L g_
map H g0

map E gT
map R gt

map <C-h> <Esc><C-w>h
map <C-j> <Esc><C-w>j
map <C-k> <Esc><C-w>k
map <C-l> <Esc><C-w>l

nmap <C-s> :w<CR>
