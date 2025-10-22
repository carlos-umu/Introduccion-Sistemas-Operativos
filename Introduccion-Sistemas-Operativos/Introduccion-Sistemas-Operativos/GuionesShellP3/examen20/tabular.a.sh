#!/bin/bash



campos=$(head -1 "$1" | wc -w) # cuentas las palabras
echo Numero de campos: $numcampos

for i in $(seq 1 $numcampos)
 do
 	echo Palabras en el campo $i:
 	cat "$1" | tr -s " " | cut -f$i -d " "
 done

