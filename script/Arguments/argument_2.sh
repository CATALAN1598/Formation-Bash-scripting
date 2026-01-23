#!/bin/bash
#

if [ "$1" == "-h" ]
then
	echo -e "Usage $0: Ce script attent 3 arguments\nLe premier est ignoré sauf si il vaut -h\nLe deuxième argument doit être un pays et le troisième une ville de ce pays"
	exit 0
fi

echo -e  "\n#\n------------------------\n#\n"
echo "Le nom du script est: 		$0"
echo "Le premier argument est 	$1"
echo "Le deuxième argument est 	$2"
echo "Le troisieme argument est 	$3"

shift 
echo -e  "\n#\n------------------------\n#\n"
echo "Le premier argument est 	$1"
echo "Le deuxième argument est 	$2"
echo "Le troisieme argument est $3"


pays="$1"
ville="$2"

echo -e  "\n#\n------------------------\n#\n"
echo -e "J'habite à $ville qui se trouve dans le pays $pays"
