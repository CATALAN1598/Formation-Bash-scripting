#!/bin/bash
#

if [[ "$1" -gt 10 && "$1" -lt 15 ]]
then
	echo "Le nombre est compris entre 10 ( non inclus ) et 15 ( non inclus )"
elif [[ "$1" -ge 20 && "$1" -le 25 ]]
then
	echo "Le nombre est compris entre 20 (inclus) et 25 (inclus)"	
else 
	echo "RIEN"
fi
