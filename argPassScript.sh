#!/bin/bash
constInt=2
if [ $# -eq $constInt ]
then
	arg1=$1
	arg2=$2
	mkdir $arg1
	touch $arg1/$arg2
	echo "created directory '$arg1'"
	echo "created file '$arg2' in '$arg1'"
else
	echo "incorrect number of arguements. must provide two."
fi
