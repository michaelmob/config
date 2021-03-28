" vim: ts=2 sw=2 et

if empty(glob('~/.vim/autoload/plug.vim'))
  silent execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'asvetliakov/vim-easymotion'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'
call plug#end()

syntax on
set background=dark

set nowrap
set autoindent

call mkdir($HOME . '/.vim/undodir', 'p', 0700)
set undodir=~/.vim/undodir
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

nmap s <Plug>(easymotion-s2)
nmap gl <Plug>(easymotion-bd-jk)
nmap gw <Plug>(easymotion-bd-w)

nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

if exists('g:vscode')
  xmap gc <Plug>VSCodeCommentary
  nmap gc <Plug>VSCodeCommentary
  omap gc <Plug>VSCodeCommentary
  nmap gcc <Plug>VSCodeCommentaryLine
endif
