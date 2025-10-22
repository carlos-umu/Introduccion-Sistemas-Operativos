#!/bin/bash


# filtrado


# uniq -ci cuenta las ocurrencias en cada linea sin mayus o minus
#grep -o alpha filtra por todo el abecedario
# mostrar en orden menor a mayor

grep -o "[[:alpha:]]" "$1" | sort | uniq -ci | sort -nr | while read linea
do

	cantidad=$(echo $linea | cut -f1 -d " ")
	letra=$(echo $liena | cut -f2 -d " ")
	echo= " $letra ($cantidad)"

done
