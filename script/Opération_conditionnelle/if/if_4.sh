#!/bin/bash
#


if ls *$1 > /dev/null 2>&1
then
	echo "le code retour de la commande est:" $?
	echo "il existe des fichiers en $1"
else 
	echo "le code retour de la commande est:" $?
	echo "il n'existe pas de fichier en $1"
fi
