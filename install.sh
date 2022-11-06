#!/bin/bash
#shopt -s expand_aliases

ZSHRC_DIR=~/.zshrc

cp -r vimrc ~/.vimrc
mkdir -p ~/.vim/
cp -r function ~/.vim/
cp -r skeleton ~/.vim/

if [ "$1" == "all" ]
then
	cp -r bashrc ~/.bashrc
	cp -r zshrc ~/.zshrc
	mkdir -p ~/.script
	cp -r script/* ~/.script/
fi

#function add_cmd_zshrc()
#{
#	ZSHRC=~/.zshrc
#	touch $ZSHRC
#	ARG=$(cat $ZSHRC | grep "$*")
#	if [ "$ARG" != "$*" ]
#	then
#		echo "$*" >> $ZSHRC
#	fi
#}
#function add_cmd_bashrc()
#{
#	BASHRC=~/.bashrc
#	touch $BASHRC
#	ARG=$(cat $BASHRC | grep "$*")
#	if [ "$ARG" != "$*" ]
#	then
#		echo "$*" >> $BASHRC
#	fi
#}
#
#NEWC="alias newc=\"mkdir includes srcs; touch Makefile srcs/main.cpp\""
#add_cmd_zshrc "$NEWC"
#add_cmd_bashrc "$NEWC"
#
#NEWCPPCLASS="
#
#HEADER="export USER=rgeny MAIL=rgeny@student.42.fr"
#add_cmd_zshrc "$HEADER"
#add_cmd_bashrc "$HEADER"
