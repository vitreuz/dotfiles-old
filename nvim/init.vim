call plug#begin()

runtime plug.vim
runtime map.vim
runtime! plugin/*.vim 
runtime! lang/*.vim 

set number
set relativenumber
set showcmd

set mouse=a
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

set path=$PWD/**

call plug#end()
