#!/bin/bash
#

input=${1:?Entrez le nom d un paquet}


# Vérifie si l'utilisateur est root (retourne un code)
check_root() {
    if [ "$(id -u)" -eq 0 ]; then
        echo "Vous êtes root."
        return 0
    else
        echo "Vous n'êtes pas root."
        return 1
    fi
}

# Vérifie un package et quitte le script si absent
check_package() {
    local package="$1"
    if ! command -v "$package" &> /dev/null; then
        echo "Erreur: $package est requis mais non installé."
        return 1
    else
        echo "$package est installé."
        return 0
    fi
    echo "CE MESSAGE N APPARAITERA JAMAIS"
}

# Affiche un message en rouge
error_message() {
    local msg="$1"
    echo -e "\033[31m$msg\033[0m"
}

# Fonction principale
main() {
    check_root
    local is_root=$?
    
    # Avertissement si non-root
    if [ "$is_root" -ne 0 ]; then
        error_message "Attention : Certaines fonctionnalités nécessitent root."
	exit 10
    fi

    # Vérification critique de curl
    check_package "$input"
    
    local is_installed=$?

    if [ "$is_installed" -ne 0 ]
    then 
    	# Suite du script
    	echo "Téléchargement en cours..."
	apt install -y "$input"
    fi
    # curl ... (exemple)
}

# Démarrage du script
main
