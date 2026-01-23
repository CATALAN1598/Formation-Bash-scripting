#!/bin/bash

# Définition de la fonction
traiter_nombres() {
    local compteur=0  # Variable locale pour compter les nombres traités
    local nombre

    echo "Début du traitement des nombres..."

    for nombre in {1..20}; do  # Boucle de 1 à 20
        # Condition pour 'break' - sortie de boucle
        if (( nombre > 15 )); then
            echo "⚠️  Nombre supérieur à 15 détecté : $nombre - arrêt du traitement !"
            break
        fi

        # Condition pour 'continue' - sauter une itération
        if (( nombre % 2 == 0 )); then
            echo "↪️  Nombre pair ignoré : $nombre"
            continue
        fi

        # Traitement du nombre impair
        echo "✅ Traitement du nombre impair : $nombre"
        ((compteur++))
    done

    echo "Total de nombres impairs traités : $compteur"
}

# Appel de la fonction
traiter_nombres

echo "Script terminé !"
