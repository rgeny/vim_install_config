#!/bin/bash

###############################################
##################### VARS ####################
###############################################

TIMEOUT="timeout 2s"
OPT_LIST=$*
SCRIPT=$(basename "$0")

TESTS_DIR=tests/

LOGS_DIR=logs/
mkdir -p $LOGS_DIR
CUR_LOGS_DIR=$LOGS_DIR$(date +"%F_%T")
find $CUR_LOGS_DIR 2>/dev/null 1>/dev/null
if [ "$?" == "0" ]
then
	printf "Duplicated log directory, wait 1 sec\n"
	sleep 1
	CUR_LOGS_DIR=$LOGS_DIR$(date +"%F_%T")
fi
mkdir $CUR_LOGS_DIR
LOG_RESULT="result"
LOG_RESEARCH="research"
LOG_TEST="test"

RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
BLUE="\033[0;34m"
PURPLE="\033[0;35m"
CYAN="\033[0;36m"
WHITE="\033[0;37m"


###############################################
##################### OPT #####################
###############################################


function get_opt()
{
	if [ "$OPT_LIST" == "" ]
	then
		if [ "$*" == "" ]
		then
			return 1
		fi
		return 0
	fi
	for i in $OPT_LIST
	do
		for j in $*
		do
			if [ "$j" == "$i" ]
			then
				return 1
			fi
		done
	done
	return 0
}

get_opt "-h" "--help"
if [ "$?" == "1" ]
then
	echo "Options :"
	echo "	--help (-h)"
	echo "	--verbose (-v)"
	echo "	--stop (-s)"
	echo "	--logclean (-lc)"
	echo "	--clean (-c)"
	echo "	--fclean (-fc)"
	echo "	--test (-t)"
	echo "	--subtest (-st)"
	echo "tests options :"
	exit
fi

get_opt "-lc" "--logclean"
if [ "$?" == "1" ]
then
	rm -rf $LOGS_DIR
	exit
fi

get_opt "-c" "--clean"
CLEAN="$?"

get_opt "-fc" "--fclean"
FCLEAN="$?"

get_opt	"-v" "--verbose"
VERBOSE="$?"

get_opt "-s" "--stop"
STOP="$?"

get_opt "-t" "--test"
FTEST="$?"

get_opt "-st" "--subtest"
SUBTEST="$?"

###############################################
################ FUNCTION TEST ################
###############################################

function	test()
{
	if [ "$1" == "" ]
	then
		printf "$SCRIPT: line $BASH_LINENO: Function require the name of the test\n"
		exit
	fi
	TEST="echo -n"
	TEST_DIR=$CUR_LOGS_DIR/$1

	if [ "$SUBTEST" == "1" ]
	then
		get_opt "$1"
		if [ "$?" == "0" ]
		then
			return 0
		fi
	fi

	RESEARCH=$($TIMEOUT $TEST)
	RESULT=$($TIMEOUT $TEST)

	if [ "$FCLEAN" == "1" ]
	then
		echo -n
	elif [ "$CLEAN" == "1" ]
	then
		echo -n
	fi

	if [ "$VERBOSE" == "1" ]
	then
		echo -n
	fi

	if [ "$RESEARCH" != "$RESULT" ]
	then
		mkdir -p $TEST_DIR 
		echo "$RESULT" > $TEST_DIR/$LOG_RESULT
		echo "$RESEARCH" > $TEST_DIR/$LOG_RESEARCH
		echo "$TEST" > $TEST_DIR/$LOG_TEST
	
		printf $BLUE"TEST\n"
		printf "$TEST"$WHITE
		printf $GREEN"\nRESEARCH\n"
		printf "$RESEARCH"$WHITE
		printf $RED"\nRESULT\n"
		printf "$RESULT"$WHITE
		if [ "$STOP" == "1" ]
		then
			exit
		fi
	else
		printf "$1"$GREEN": Ok"$WHITE"\n"
		
		if [ "$VERBOSE" == "1" ]
		then
			mkdir -p $TEST_DIR
			echo "$RESULT" > $TEST_DIR/$LOG_RESULT
			echo "$RESEARCH" > $TEST_DIR/$LOG_RESEARCH
			echo "$TEST" > $TEST_DIR/$LOG_TEST

			printf $BLUE"TEST\n"
			printf "$TEST"$WHITE
			printf $GREEN"\nRESULT\n"
			printf "$RESULT"$WHITE

		fi
	fi
}

function	is_called_test()
{
	if [ "$1" == "" ]
	then
		printf "$SCRIPT: line $BASH_LINENO: Function require the name of the test\n"
		exit
	fi

	if [ "$FTEST" == "1" ]
	then
		get_opt "$1"
		if [ "$?" == "1" ]
		then
			printf "***** TEST $1 *****\n"
			return 1
		fi
		return 0
	else
		printf "TEST $1\n"
		return 1
	fi
}

###############################################
##################### TEST ####################
###############################################

is_called_test "Vector"
if [ "$?" == "1" ]
then
	test "a"
fi
