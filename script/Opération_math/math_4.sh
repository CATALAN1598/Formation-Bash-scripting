#!/bin/bash
#

while [[ -z $nb1 || -z $nb2 ]] 
do
	while :
	do
		read -p "Entrez un nombre: " nb1
		if [[ $nb1 -gt 0 ]]
		then
			break
		fi
	done

	while :
	do
		read -p "Entrez un deuxième nombre plus grand que le premier: " nb2
		if [[ $nb2 -gt $nb1 ]]			# Equivaut à test $nb1 -gt $nb2 && break en One-line
		then
			break
		fi
	done
done

echo "premier nombre: " $nb1
echo "deuxième nombre: " $nb2


while [[ $nb1 -lt $nb2 ]]
do
	echo "Pas encore, Le premier nombre vaut $nb1"
	sleep 1
	nb1=$(( nb1 + 1 ))
done

echo "$nb1 est égale à $nb2"
