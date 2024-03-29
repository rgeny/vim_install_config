#!/bin/bash
shopt -s expand_aliases
source ~/.bashrc

############################################################
########################## COLORS ##########################
############################################################

#	Special
RESET="\033[0m"
BRIGHT="\033[1m"
DIM="\033[2m"
ITALICS="\033[3m"
UNDERSCORE="\033[4m"
BLINK="\033[5m"
#BLINK="\033[6m"
REVERSE="\033[7m"
HIDDEN="\033[8m"
STRIKETHROUGH="\033[9m"

DOUBLE_UNDERSCORE="\033[21m"

OVERLINE="\033[53m"

#	Text colors
BLACK_TEXT="\033[30m"
RED_TEXT="\033[31m"
GREEN_TEXT="\033[32m"
YELLOW_TEXT="\033[33m"
BLUE_TEXT="\033[34m"
MAGENTA_TEXT="\033[35m"
CYAN_TEXT="\033[36m"
WHITE_TEXT="\033[37m"
GREY_TEXT="\033[90m"
RED2_TEXT="\033[91m"
GREEN2_TEXT="\033[92m"
YELLOW2_TEXT="\033[93m"
BLUE2_TEXT="\033[94m"
PINK_TEXT="\033[95m"
CYAN2_TEXT="\033[96m"
WHITE2_TEXT="\033[97m"

#	Background colors
BLACK_BACK="\033[40m"
RED_BACK="\033[41m"
GREEN_BACK="\033[42m"
YELLOW_BACK="\033[43m"
BLUE_BACK="\033[44m"
MAGENTA_BACK="\033[45m"
CYAN_BACK="\033[46m"
WHITE_BACK="\033[47m"
GREY_BACK="\033[100m"
RED2_BACK="\033[101m"
GREEN2_BACK="\033[102m"
YELLOW2_BACK="\033[103m"
BLUE2_BACK="\033[104m"
PINK_BACK="\033[105m"
CYAN2_BACK="\033[106m"
WHITE2_BACK="\033[107m"


############################################################
###################### CHECK ERROR #########################
############################################################

if (( $# > 1 ))
then
	printf $RED"Program requires 1- argument :\n"$RESET
	printf "./newcpp.sh ![path_to_program_root]\n"
	exit 1
fi

############################################################
########################## ARGS ############################
############################################################

#	ARGS
N_ARGS=$#
ARGS=$*

#	VARS
if (( $# == 1 ))
then
	ROOT=$1
else
	ROOT="./"
fi

INC_DIR=$ROOT"includes/"
CLASS_DIR=$INC_DIR"class/"
DEFINES_DIR=$INC_DIR"defines/"
FUNCTIONS_DIR=$INC_DIR"functions/"
TEMPLATES_DIR=$INC_DIR"templates/"
SRCS_DIR=$ROOT"srcs/"
MAIN_FILE=$SRCS_DIR"main.cpp"
CUR_DIR=$(cd $ROOT; pwd)

FNX_DIR=fnx_cpp/
FNX_CPP_REPO=git@github.com:rgeny/fnx_cpp.git
FNX_CPP_REPO_NAME=${ROOT}fnx_cpp

#	CMD
NEW_DIR="mkdir -p"
NEW_FILE="vim -c wq"
CLONE="git clone"
MAKEFILE="makecpp"

############################################################
########################## PROG ############################
############################################################

$NEW_DIR $INC_DIR
$NEW_DIR $CLASS_DIR
$NEW_DIR $DEFINES_DIR
$NEW_DIR $FUNCTIONS_DIR
$NEW_DIR $TEMPLATES_DIR
$NEW_DIR $SRCS_DIR
makecpp $ROOT

$NEW_FILE $MAIN_FILE

if [[ "$CUR_DIR" == *"fnx_cpp" ]]
then
	printf "Can't clone fnx_cpp repo in fnx_cpp repo\n"
elif [ ! -e $FNX_CPP_REPO_NAME ]
then
	$CLONE $FNX_CPP_REPO $FNX_CPP_REPO_NAME
else
	printf "fnx_cpp already cloned\n"
fi
