#!/bin/bash

ZSHRC_DIR=~/.zshrc

cp .vimrc ~/
cp -r function ~/.vim/
cp -r skeleton ~/.vim/

function add_cmd_zshrc()
{
	ZSHRC=~/.zshrc
	ARG=$(cat $ZSHRC | grep "$*")
	if [ "$ARG" != "$*" ]
	then
		echo "$*" >> $ZSHRC
	fi
}
function add_cmd_bashrc()
{
	BASHRC=~/.bashrc
	ARG=$(cat $BASHRC | grep "$*")
	if [ "$ARG" != "$*" ]
	then
		echo "$*" >> $BASHRC
	fi
}

NEWCPP="alias newcpp=\"mkdir includes srcs class; touch Makefile srcs/main.cpp\""
add_cmd_zshrc "$NEWCPP"
add_cmd_bashrc "$NEWCPP"

NEWC="alias newc=\"mkdir includes srcs; touch Makefile srcs/main.cpp\""
add_cmd_zshrc "$NEWC"
add_cmd_bashrc "$NEWC"
