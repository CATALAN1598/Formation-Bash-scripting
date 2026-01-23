#!/bin/bash
#

DATE=$(date +"Année: %Y, Mois: %m, Jour: %d")		# La vairable DATE prend pour valeur le retour de la commande

echo "La date est $DATE"				# Affiche la valeur de $DATE le retour de la commande
echo

list=$(ls -l)						# La variable $list prend la valeur de ls avec son argument -l

echo -e "le contenu du repertoire $PWD est\n$list"	# Affiche le contenu de la variable $list qui équivaut à un ls -l
echo

alias=$(grep ^alias $HOME/.bashrc)			# Le script est portable et peut afficher les alias de l'utilisateur qui lance le script
							# grace au variable d'environnement

echo -e "Mes alias sont:\n$alias"			# Affiche les alias de l'utilisateur

