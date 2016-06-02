#!/bin/bash
<<"COMMENT"
constInt=2
if [ $# -eq $constInt ]
then	
	arg1=$1
	arg2=$2
	grep -o "$arg1" $arg2 | wc -l
 
else
	echo "incorrect number of arguements. must provide 2."
fi
COMMENT
constInt=1
if [ $# -eq $constInt ]
then	
	arg1=$1
	grep -ro "$arg1" . | wc -l
 
else
	echo "incorrect number of arguements. must provide 1."
fi
