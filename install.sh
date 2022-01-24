#!/bin/bash

ZSHRC_DIR=~/.zshrc

cp .vimrc ~/
cp -r function ~/.vim/
cp -r skeleton ~/.vim/

function add_cmd_zshrc()
{
	ZSHRC=~/.zshrc
	ARG=$(cat $ZSHRC | grep "$1")
	if [ "$ARG" != "$1" ]
	then
		echo "$1" >> $ZSHRC
	fi
}
function add_cmd_bashrc()
{
	BASHRC=~/.bashrc
	ARG=$(cat $BASHRC | grep "$1")
	if [ "$ARG" != "$1" ]
	then
		echo "$1" >> $BASHRC
	fi
}
NEWCPP="alias makecpp=\"mkdir includes srcs class && touch Makefile srcs/main.cpp\""
add_cmd_zshrc "$NEWCPP"
add_cmd_bashrc "$NEWCPP"
NEWC="alias makec=\"mkdir includes srcs && touch Makefile srcs/main.cpp\""
add_cmd_zshrc "$NEWC"
add_cmd_bashrc "$NEWC"
