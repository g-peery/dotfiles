#!/bin/bash

if [ ! -e "$HOME/.vim/pack/themes/start/dracula" ]; then
    mkdir -p ~/.vim/pack/themes/start
    cd ~/.vim/pack/themes/start
    git clone https://github.com/dracula/vim.git dracula
fi
