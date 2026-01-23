#!/bin/bash
#

var=toto

echo "La variable vaut: " $var
echo
unset var

echo "[unset] La variable var est désormais NULL"
echo

var2=${var-default variable} 	# Si variable null utilise la valeur defaut

echo "[var2=\${var-default variable}] La variable vaut: " $var2 # Affiche var si pleine ou affiche defaut si var vide
echo

var=tata
echo "[var=tata] La variable var vaut $var"
echo

var2=${var-default variable} 	# Si variable vide utilise la valeur defaut

echo "[var2=\${var-default variable}] La variable vaut: " $var2 # Affiche var si pleine ou affiche defaut si var vide
echo

var=""
echo "[var=""] La variable var vaut VIDE "
echo

var2=${var-default variable} 	# Si variable vide utilise la valeur defaut

echo "[var2=\${var-default variable}] La variable vaut: " $var2 # Affiche var si pleine ou affiche defaut si var vide


echo -e  "\n#\n------------------------\n#\n"

declare var3			# Déclare une variable NULL
echo "[declare var3]La variable n'a pas de valeur elle est NULL"
echo

var4=${var3:-default variable}	# Si variable est vide ou null var4 vaut default variable 

echo "[var4=\${var3:-default variable}] La variable vaut: " $var4 # Affiche var si pleine ou affiche defaut si var vide
echo

var3=titi

echo "[var3=titi] La variable var3 vaut $var3"
echo

var4=${var3:-default variable}
echo "[var4=\${var3:-default variable}] La variable vaut: " $var4 # Affiche var si pleine ou affiche defaut si var vide
echo

var3=""

echo "[var3=""] La variable var est désormais VIDE"
echo

var4=${var3:-default variable}
echo "[var4=\${var3:-default variable}] La variable vaut: " $var4 # Affiche var si pleine ou affiche defaut si var vide
