#!/bin/bash
#

_list () { 							# Déclaration d'une fonction liste qui attend un argument
local dir							# Déclaration d'une variable local dir
export extention						# Déclaration d'une variable export extention

dir="$1"							# Dir prend pour valeur le premier argument de la fonction

la_liste=$(ls "$dir")						# la variable prend la valeur d'un ls de dir qui est le premier arguement de la fonction 
				
echo -e "La liste fichier du répertoire $dir\n$la_liste"	# Affiche les fichier présent dans la liste

extention=$(echo "$la_liste" | cut -d '.' -f2)			# Défini la variable extention à la liste de fichiers séparé par un "." avec le deuxieme champ


}








_list "$PWD"							# Appel de la fonction avec comme paramètre la variable $PWD (ENV)

echo
echo "le répertoire est: $dir"					# Affiche le contenu de la variable $dir qui est local à la foncion (existe uniquement dans la fonction)
echo
echo -e "les extentions sont:\n$extention"			# Affiche le contenu de la variable extention qui est exporté en dehors de la fonction
