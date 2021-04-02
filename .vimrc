" vim: ts=2 sw=2 et
if empty(glob('~/.vim/autoload/plug.vim'))
  let plugurl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  silent execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs ' plugurl
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
if exists('g:vscode')
  Plug 'asvetliakov/vim-easymotion', { 'as': 'neo-vim-easymotion' }
else
  "Plug 'easymotion/vim-easymotion'
  Plug 'asvetliakov/vim-easymotion', { 'as': 'neo-vim-easymotion' }
endif

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

map ZXC :qa<CR>
nmap <Space>w :w

map <Space>h <Esc><C-w>h
map <Space>j <Esc><C-w>j
map <Space>k <Esc><C-w>k
map <Space>l <Esc><C-w>l

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
