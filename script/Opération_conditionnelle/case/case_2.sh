#!/bin/bash
#

case $(pwd | cut -d "/" -f2) in
	home)
		echo "Vous êtes dans votre home"
		;;
	usr)
		echo "Vous êtes dans /usr"
		;;
	var)
		echo "Vous êtes dans le /var"
		;;
	"")
		echo "Vous êtes à la racine"
		;;
esac
