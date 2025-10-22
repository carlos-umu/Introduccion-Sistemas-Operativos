#!/bin/bash

#$1 directorio
#$2 nombre usuario suma tamaños ficheros de ese usuario en ese directorio

total=0

find $1 -type f -user $2 -printf "%s\n" 2> /dev/null |(

while read linea
do
	let total+=$linea
done;

echo "El tamaño total de los ficheros del directorio $1 que pertenecen al usuario $2 es :"
echo $total bytes










)


