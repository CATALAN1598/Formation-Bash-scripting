#!/bin/bash
#

#Déclaration de variable 
 
nb0=23
nb1="023"
nb2="25"

nb3=10
nb4=2

if [ "$nb2" -gt "$nb0" ]
then 
	echo "$nb2 est plus grand que $nb0"
fi

if [ "$nb3" < "$nb4" ]
then
	echo "$nb3 est plus petit que $nb4"
fi

if [[ "$nb3" < "$nb4" ]]	# Vérifie de manière lexicographique (ordre ASCII)
then
	echo "$nb3 est plus petit que $nb4"
fi

list="456 10 345 2"	#Liste de nombre sous forme de chaîne de caractère
list2=(456 10 345 2)	#Liste de nombre 

sorted_list=($(printf "%s\n" "${list[@]}" | LC_ALL=C sort))
sorted_list2=($(printf "%s\n" "${list2[@]}" | LC_ALL=C sort))

echo "${sorted_list[@]}"
echo "${sorted_list2[@]}" 

if [ "$nb3" -gt "$nb4" ]
then
	echo "$nb3 est plus grand que $nb4"
fi
