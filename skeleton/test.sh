#!/bin/bash

###############################################
##################### OPT #####################
###############################################

OPT_LIST=$*

function get_opt()
{
	if [ "$OPT_LIST" == "" ] || [ "$*" == "" ]
	then
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
	echo "tests options :"

	exit
fi

get_opt	"-v" "--verbose"
VERBOSE="$?"

get_opt "-s" "--stop"
STOP="$?"

###############################################
#################### TEST #####################
###############################################



