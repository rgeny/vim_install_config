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
####################### CHECK ERROR ########################
############################################################

if (( $# != 2 ))
then
	printf $RED"Program requires only 2 arguments :\n"$RESET
	printf "./Makefile.sh makefile_type root\n"
	exit 2
elif [ -e "Makefile" ]
then
	printf $RED"Makefile already exist !\n"$RESET
	exit 2
fi

############################################################
########################### ARGS ###########################
############################################################

#	ARGS
N_ARGS=$#
ARGS=$*

#	VARS
ROOT=$2
SKELETON_PATH="~/.vimrc/skeleton/"

MAKEFILE=$ROOT"Makefile"

CPP_TYPE="cpp"
CPP_MAKEFILE="makecpp"
C_TYPE="c"
C_MAKEFILE="makec"

#	CMD
NEW_FILE="vim -c wq"
MOVE_FILE="mv"

############################################################
########################## PROG  ###########################
############################################################

if [ "$1" == "$CPP_TYPE" ]
then
	$NEW_FILE $CPP_MAKEFILE
	$MOVE_FILE $CPP_MAKEFILE $MAKEFILE
elif [ "$1" == "$C_TYPE" ]
then
	$NEW_FILE $C_MAKEFILE
	$MOVE_FILE $C_MAKEFILE $MAKEFILE
else
	exit 2
fi
