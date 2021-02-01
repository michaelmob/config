" vim: ts=2 sw=2 et
nmap L g_
nmap H g0

nmap E gT
nmap R gt

call mkdir($HOME . "/.mike/.vim/undodir", "p", 0700) 
set undodir=~/.mike/.vim/undodir
set undofile