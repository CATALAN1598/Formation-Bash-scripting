#!/bin/bash
#set -x
echo $var	# Affiche la valeur de $var qui n'a pas été initialisé

if [[ ! -v var ]] # vérifie que la variable est non NULL
then
	echo "La variable est NULL"
fi

var=toto 	# la variable à pour valeur la chaîne de caractère « toto »

echo $var	# Affiche la valeur de la variable $var : toto

var=tata	# la variable à pour valeur la chaîne de caractère « tata »

echo $var	# Affiche la valeur de la variable $var : tata

unset var	# Supprime la variable $var
		# Attention pour unset une variable ne pas mettre le $ devant

echo $var	# Affiche le contenu de la variable $var
		# ERREUR : la variable n’existe plus 
		# Une variable doit avoir une valeur pour existé (VIDE est une valeur)


echo "[CHECK] quelle est la valeur de \$var ?"
if [[ -z $var ]]
then
	echo "La variable est vide !"
fi
echo




echo "[CHECK] \$var est-elle défini ?"
if [[ ! -v var ]]
then
	echo "La variable n'est pas défini donc sa valeur est NULL !"
fi
echo
# 
# 
var=AZERTY
#var=""
# 
# 
echo "[CHECK] \$var est-elle défini et si oui sa valeur est-elle vide ?"
if [[ -v var && -z $var ]]
then
	echo "La variable est défini et sa valeur est vide !"
elif [ ! -v var ]
then
	echo "La variable n'est pas défini donc sa valeur est NULL !"
else
	echo "La variable est défini et sa valeur est $var"
fi


#set +x
