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
set background=dark

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

map ZA :qa<CR>
nmap <Leader>w :w<CR>

map <Leader>h <Esc><C-w>h
map <Leader>j <Esc><C-w>j
map <Leader>k <Esc><C-w>k
map <Leader>l <Esc><C-w>l

nmap <C-e> +
xmap <C-e> +

nmap s <Plug>(easymotion-s2)
nmap gl <Plug>(easymotion-bd-jk)
nmap gw <Plug>(easymotion-bd-w)

nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

silent file
set paste
