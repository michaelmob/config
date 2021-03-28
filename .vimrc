" vim: ts=2 sw=2 et

syntax on
set background=dark

set nowrap
set autoindent
"set wildoptions+=pum

call mkdir($HOME . "/.mike/.vim/undodir", "p", 0700)
set undodir=~/.mike/.vim/undodir
set undofile

map L g_
map H g0

map E gT
map R gt

map Z<Esc> :qa<CR>

map <C-h> <Esc><C-w>h
map <C-j> <Esc><C-w>j
map <C-k> <Esc><C-w>k
map <C-l> <Esc><C-w>l
