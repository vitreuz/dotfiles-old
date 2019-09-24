call plug#begin()

runtime plug.vim
runtime map.vim
runtime! plugin/*.vim 
runtime! lang/*.vim 

call plug#end()

set number
set relativenumber
set showcmd

set mouse=a
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

set foldmethod=syntax
set foldnestmax=10
set nofoldenable
set foldlevel=10

set path=$PWD/**

let g:netrw_bufsettings = 'noma nomod nowrap rnu ro nobl'

colorscheme escuro
