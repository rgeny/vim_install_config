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

NEWCPP="alias newcpp=\"mkdir includes srcs class && touch Makefile srcs/main.cpp\""
add_cmd_zshrc "$NEWCPP"
add_cmd_bashrc "$NEWCPP"

NEWCPPCLASS="alias newcppclass='function _newclass(){for i in \$@ do mkdir \"srcs/\$i\";vim \"class/\$i.hpp\";vim \"srcs/\$i/\$i.structor.cpp\";	vim \"srcs/\$i/\$i.member.cpp\";vim \"srcs/\$i/\$i.operator.cpp\";vim \"srcs/\$i/\$i.accessor.cpp\";done};_newclass'"
add_cmd_zshrc "$NEWCPPCLASS"
add_cmd_bashrc "$NEWCPPCLASS"

NEWC="alias newc=\"mkdir includes srcs && touch Makefile srcs/main.cpp\""
add_cmd_zshrc "$NEWC"
add_cmd_bashrc "$NEWC"
