#!/bin/bash

if [ $# -eq 0 ] || [ $# -gt 1 ]; then
	echo "usage: gbk2utf.sh file"
	exit
fi
file=$1
if [ -f $file ]; then
	echo "$file Converting..."
	iconv -f gb2312 -t UTF-8 -c $file > tmp
	mv tmp $file
else
	echo "$file not exist"
fi
