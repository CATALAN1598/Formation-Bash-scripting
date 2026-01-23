#!/bin/bash

ma_fonction() {
    echo "Appel de la fonction: Le chiffre est supérieur ou égal à 5"
}

read -p "Entrez un chiffre entre 1 et 9: " chiffre

# Vérification améliorée de l'input
if [[ ! "$chiffre" =~ ^[1-9]$ ]]; then
    echo "Erreur: Entrez uniquement un chiffre entre 1 et 9" >&2
    exit 1
elif (( chiffre < 5 )); then
    echo "Le chiffre choisi ($chiffre) est inférieur à 5"
elif (( chiffre >= 5 )); then
    ma_fonction
fi
