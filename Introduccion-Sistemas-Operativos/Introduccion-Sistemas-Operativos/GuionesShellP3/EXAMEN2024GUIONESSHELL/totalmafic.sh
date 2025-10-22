#!/bin/bash


total=0

find $1 -type f -user $2 -printf "%s\n" 2> /dev/null |


	(
	while read linea
	do
	let total+=$linea    #imprimes solo la linea y te quedas con lo que te interesa
	done;
	echo "El tamaño total de los ficheros del diretorio $1  que pertenecen al usuario $2   es: $total   bytes"
	)
