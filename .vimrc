" vim: ts=2 sw=2 et
" ~/.vimrc

if empty(glob('~/.vim/autoload/plug.vim'))
  let plugurl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  silent execute '!wget -P ~/.vim/autoload ' . plugurl
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch'
Plug 'chrisbra/Recover.vim'
Plug 'wellle/targets.vim'
Plug 'terryma/vim-expand-region'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/vim-easy-align'
call plug#end()

syntax on
colorscheme slate

set number relativenumber
set paste
set modeline
set nowrap
set autoindent

call mkdir($HOME . '/.vim/undodir', 'p', 0700)
call mkdir($HOME . '/.vim/swap', 'p', 0700)
set directory=~/.vim/swap
set undodir=~/.vim/undodir
set undofile

let mapleader = ' '

map L g_
map H g0
map E gT
map R gt

map <Leader>h <Esc><C-w>h
map <Leader>j <Esc><C-w>j
map <Leader>k <Esc><C-w>k
map <Leader>l <Esc><C-w>l

map ZA :qa<CR>
map <C-e> +
nmap <Leader>w :w<CR>
nmap S viwS

map s <Plug>(easymotion-s2)
map gl <Plug>(easymotion-bd-jk)
map gw <Plug>(easymotion-bd-w)

map ga <Plug>(EasyAlign)
map gat gaip*\|

silent file
