#!/bin/bash
#

secret="secret"

while :
do
	read -p "Entrez le mot secret:" mdp
	if [ $mdp == "$secret" ]
	then
		break
	fi
	
	echo "Ce n'est pas le bon mot de passe"
	echo -e "Indice: lisez bien la phrase\n"

done

echo "Vous avez trouvez le mot $secret"
