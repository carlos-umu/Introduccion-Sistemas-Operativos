#!/bin/bash

total=0


fichero=$(mktemp)
find ./ -type f  -name "*.txt" -printf "%p %s\n" > $fichero


while read linea 
do
	nombre=$(echo $linea | cut -f1 -d " ")
	tamano=$(echo $linea | cut -f2 -d " ")
	let total+=$tamano
	echo "$nombre $tamano"
	echo $tamano
done <$fichero


echo "tamaño total: $total"
exit 0
