#!/bin/bash
constInt=2
if [ $# -eq $constInt ]
then
	arg1=$1
	arg2=$2
	
	dir=$arg1
	dir+="dir"
        mkdir $dir
	count=1
	while (($arg2 > 0))
        do	
		file=$arg1
		file+=$count
		touch $dir/$file
		echo "created file '$file' in '$dir'"
		count=$((count+1))
		arg2=$((arg2-1))
	done
else
	echo "incorrect number of arguements. must provide two."
fi
