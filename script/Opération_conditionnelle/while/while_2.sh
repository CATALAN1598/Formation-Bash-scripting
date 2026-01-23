#!/bin/bash
#

num=1

while read -r line
do
	echo "ligne $num: $line"
	num=$(( num + 1 ))
done < /etc/passwd

