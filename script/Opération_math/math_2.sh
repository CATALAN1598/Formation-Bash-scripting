#!/bin/bash
#

var="une phrase"

echo -e "\nTEST 1"
if [ $var == "une phrase" ] 
then
	echo "Réussi"
elif [ "$var" == "une phrase" ]
then
	echo "Réussi avec protection de la variable à l'appel"
else 
	echo "erreur"
fi

echo -e "\nTEST 2"
if [[ $var == "une phrase" ]]
then
	echo "Réussi"
fi

echo -e "\nTEST 3"
if [ "$var" == *phrase ]
then
	echo "Réussi"
else
	echo "erreur"
fi

echo -e "\nTEST 4"
if [[ $var == *phrase ]]
then
	echo "Réussi"
else
	echo "erreur"
fi

echo -e "\nTEST 5"
if [ "$var2" -gt 100 ]
then
	echo "Réussi"
else 
	echo "erreur"
fi

echo -e "\nTEST 6"
if [[ "$var2" -gt 100 ]]
then
	echo "Réussi"
else 
	echo "FALSE"
fi
