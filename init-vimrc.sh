#!/bin/bash

if [ -f ~/.vimrc ]; then
	exit 1
fi

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
