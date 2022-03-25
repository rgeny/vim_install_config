#!/bin/bash

###############################################
##################### LOGS ####################
###############################################

LOGS_DIR=log/
mkdir -p $LOGS_DIR
CUR_LOGS_DIR=$LOGS_DIR$(data +"%F_%T")
mkdir $CUR_LOGS_DIR


###############################################
##################### OPT #####################
###############################################

OPT_LIST=$*

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
	echo "tests options :"
	exit
fi

get_opt "-lc" "--logclean"
if [ "$?" == "1" ]
then
	rm -rf $LOGS_DIR
	exit
fi

get_opt	"-v" "--verbose"
VERBOSE="$?"

get_opt "-s" "--stop"
STOP="$?"

###############################################
#################### TEST #####################
###############################################



