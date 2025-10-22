#!/bin/bash

#$1 directorio
#$2 numero entero >0
#mostrara los n ficheros mas grandes en ese directorio ordenados de mayor a menor

#finalmente tamaño total en bytes


total=0
num=0
find $1 -maxdepth 1 -type f -printf "%f:%s\n" | sort  -k2,2nr -t ":" | head -n $2 |(

while read linea
do

	fichero=$(echo $linea | cut -f1 -d ":")
	tama=$(echo $linea | cut -f2 -d ":")
	let total+=tama
	let num++
	echo Fichero: $fichero, tamaño: $tama bytes

done

	echo "Tamaño total de los $num ficheros regulares mostrados: $total bytes" 





)
