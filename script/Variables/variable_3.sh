#!/bin/bash
#readonly var=toto	# Déclaration d'une variable en readonly avec pour valeur toto
readonly var		# déclaration d’une variable en readonly avec pour nom var
		        # La variable à pour valeur : NULL
			 
echo $var	    	# Affiche le contenu de la variable $var
		        # ERREUR : la variable n’existe pas car elle n’a pas encore eu de contenu

var=tata	    	# ERREUR : la variable est en readonly 

