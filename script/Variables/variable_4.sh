#! /bin/bash


var=AZERTY

echo "ma variable est:" $var 
echo
echo "ma variable est:" "$var"
echo
echo "ma variable est:" ${var}
echo
echo -e  "\n#\n------------------------\n#\n"

words="toto tata titi"

for word in $words;
do 
	echo $word
done

echo
for word in "$words";
do 
	echo $word
done

echo -e  "\n#\n------------------------\n#\n"

list="*.sh"
echo
ls $list
echo
ls "$list"
echo
ls ${list}
