#!/bin/bash
#


#Variable
nom=${1:?Entrez votre nom}
prenom=${2:?Entrez votre prénom}
age=${3:?Entrez votre age}
date=$(date)

#Fonction

check_age () {

export validation=0

	if (( $1 >= 18 ))
	then
		validation=1
	fi
}

new_name () {

export init_name=$1
local ask1="ajsngieocnzore"
local ask2="ndejzncjnisjei"
export new_name

while [[ "$ask1" != "$ask2" ]]
do
	read -p "Entrez le nouveau nom souhaité: " ask1
	read -p "Comfirmez le nouveau nom souhaité: " ask2
done

new_name=$ask2

}

echo -e "[$date] Votre nom est $nom, votre prénom est $prenom et vous avez $age ans.\n"

while [[ $change != "Y" && $change != "N" ]]
do
	read -p "Voulez vous changez de nom: Y/N: " change
	case $change in
		Y)
			echo "Pour changer de nom vous devez être majeur"

			check_age $age

			if [ $validation = 1 ]
			then
				echo "Vous êtes majeur"
				echo -e "\nLANCEMENT DE LA PROCEDURE DE CHANGEMENT DE NOM\n"
				new_name $nom
				nom=$new_name
				while [[ -z $nom ]]
				do
					echo "[ERREUR]: Votre nouveau nom n'est pas détecté"
					echo -e "\nRE-LANCEMENT DE LA PROCEDURE DE CHANGEMENT DE NOM\n"
					new_name $init_name
					nom=$new_name
				done
				echo "Votre nouveau nom à été pris en compte !"
				echo -e "[$date] Votre nouveau nom est $nom, votre prénom est $prenom et vous avez $age ans."
			else
				echo "Vous n'êtes pas majeur vous avez $age ans"
				exit 1
			fi
			;;
		N)
			echo "Vous avez choissi de garder votre nom"
			echo -e "[$date] Votre nom est $nom, votre prénom est $prenom et vous avez $age ans."
			;;
	esac
done

echo "Fin du script"

