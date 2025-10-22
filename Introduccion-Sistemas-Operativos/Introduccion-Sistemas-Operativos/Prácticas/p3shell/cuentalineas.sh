#!/bin/bash



for i in $@
do
	lineas=$(cat $i | wc -l)
	echo "el numero de lineas de $i es $lineas"

done

