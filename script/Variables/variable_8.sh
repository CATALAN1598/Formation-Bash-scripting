#!/bin/bash
#

read -p "Entrez votre nom d'utilisateur: " utilisateur 	# Lis l'entré de l'exécuteur pour son nom d'utilisateur
read -p "Entrez votre mot de passe: " -s password	# Lis l'entré de l'exécuteur pour son mot de passe sans l'affiché (un peu d'intimité)
echo -e "\n"
echo "utilisateur: $utilisateur"
echo "password: $password"
#echo `$utilisateur`
hash_pass=$(cksum <<< $password | cut -d " " -f1) 				# hash le mot de passe dans la variable $hash_pass

if [[ $utilisateur == "admin" && $hash_pass == "2092279974" ]]			# Vérifie si l'utilisateur et le mot de passe hashé sont les bons.
then
	echo "Vous avez trouver le message secret: le BASH c'est PUISSANT"	# Si oui affiche le message caché
else
	echo "Fais un effort le bon MDP va pas s'écrire tout seul !!!"		# Si non motive le chercheur
fi
