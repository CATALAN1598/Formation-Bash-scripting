#!/bin/bash
#

ville=${1:?Entrez votre ville}
code_postale=${2:?Entrez le code postal de votre ville}

if [ $# -ne 2 ]
then
	echo "Le script attend 2 arguments"
	exit 1
fi

if [[ "$code_postale" =~ ^[0-9]{5}$ ]]
then
	echo "Vous habitez à $ville et votre code postale est $code_postale"
else
	echo "votre code postale ne correspond pas à une ville en France"
fi
	
