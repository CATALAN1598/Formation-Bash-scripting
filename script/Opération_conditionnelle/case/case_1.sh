#!/bin/bash
#

input=${1:?Entrez un chiffre entre 1 et 5}


case $input in
	1)
		echo "Le chiffre est 1"
		;;
	2)
		echo "Le chiffre est 2"
		;;
	3)
		echo "Le chiffre est 3"
		;;
	4)
		echo "Le chiffre est 4"
		;;
	5)
		echo "Le chiffre est 5"
		;;

	*)
		echo "Entrez une valeur entre 1 et 5"
		exit 1
		;;
esac
