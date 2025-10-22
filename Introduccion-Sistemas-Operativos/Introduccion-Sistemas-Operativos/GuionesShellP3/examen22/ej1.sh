#!/bin/bash


if test $# -eq 0
then
	echo " Uso: ejercicio1.sh fichero"
	exit 1

elif ! test -e $1 -o -r $1
then
	echo " Error: Fichero ’$1’ no existe o no se puede leer."
	exit 2
else
	exit 0
fi

