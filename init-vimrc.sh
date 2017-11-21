#!/bin/bash

if [ -f ~/.vimrc ]; then
    echo Please backup your .vimrc first
	  exit 1
fi

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# installing solarized color scheme
echo installing solarized color scheme...

SOLARIZEDDIR=$(mktemp -d)

if [ -z ${SOLARIZEDDIR} ]; then
    echo Failed to create temporary directory
    exit 1
fi

git clone git://github.com/altercation/vim-colors-solarized.git $SOLARIZEDDIR/vim-colors-solarized

if [[ $? -ne 0 ]]; then
    echo Failed to clone solarized git repository
fi

if [[ ! -d ~/.vim/colors ]]; then
    mkdir -p ~/.vim/colors
fi

mv $SOLARIZEDDIR/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/

rm -rf $SOLARIZEDDIR

