source /etc/vim/vimrc

filetype on
filetype plugin on
filetype indent on " file type based indentation

set number

set tabstop=4
set shiftwidth=4
set expandtab

set autoindent

set colorcolumn=72,80

autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0
