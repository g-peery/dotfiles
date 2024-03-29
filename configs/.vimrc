source $VIMRUNTIME/defaults.vim

packadd! dracula
syntax enable
colorscheme dracula

filetype on
filetype plugin on
filetype indent on " file type based indentation

set ruler
set number

set tabstop=4
set shiftwidth=4
set expandtab

set autoindent

autocmd BufNewFile,BufRead *.py.m4 set filetype=python

autocmd FileType python set colorcolumn=72,80

autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

autocmd FileType lua set colorcolumn=80
