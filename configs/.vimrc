source $VIMRUNTIME/defaults.vim

filetype on
filetype plugin on
filetype indent on " file type based indentation

set ruler
set number

set tabstop=4
set shiftwidth=4
set expandtab

set autoindent

autocmd FileType python set colorcolumn=73,80

autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0
