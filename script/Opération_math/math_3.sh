#!/bin/bash
#

nb1=${1:?Entrez un nombre}
nb2=${2:?Entrez un second nombre}

pos_result=$(( nb1 + nb2 ))
neg_result=$(( nb1 - nb2 ))
div_result=$(( nb1 / nb2 ))
mul_result=$(( nb1 * nb2 ))
mod_result=$(( nb1 % nb2 ))

echo "Le résultat de $nb1 + $nb2 est:" $pos_result
echo "Le résultat de $nb1 - $nb2 est:" $neg_result
echo "Le résultat de $nb1 / $nb2 est:" $div_result
echo "Le résultat de $nb1 * $nb2 est:" $mul_result
echo "Le résultat de $nb1 % $nb2 est:" $mod_result
