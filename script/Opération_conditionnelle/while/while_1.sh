#!/bin/bash
#

id=1

while [[ $id -lt 15 ]]
do
	echo "touch fichier_"$id".txt"
	id=$(( id + 1  ))
	echo $id
done
