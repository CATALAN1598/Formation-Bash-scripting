#!/bin/bash
#

start=1

list=${1:?Entrez un chiffre entre 1 et 9}

if [ $list -gt 9 ]
then
	echo "le chiffre est trop grand"
	exit 1
fi

for i in {1.."$list"}
do
	echo "Le chiffre est:" $i
done

echo "VOIR SHELLCHECK"

for i in $(eval "echo {$start..$list}")
do
	echo "Le chiffre est:" $i
done


