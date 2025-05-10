#!/bin/bash
#shopt -s expand_aliases

ZSHRC_DIR=~/.zshrc

cp -r vimrc ~/.vimrc
mkdir -p ~/.vim/
cp -r function ~/.vim/
cp -r skeleton ~/.vim/
cp -r pack ~/.vim/

if [ "$1" == "all" ]
then
	cp -r bashrc ~/.bashrc
	cp -r zshrc ~/.zshrc
	mkdir -p ~/.script
	cp -r script/* ~/.script/
fi

