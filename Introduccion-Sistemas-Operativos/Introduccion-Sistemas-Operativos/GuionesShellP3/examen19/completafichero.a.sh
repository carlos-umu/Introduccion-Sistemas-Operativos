#!/bin/bash

if test $# -lt 2
then
	echo  Uso: completafichero.a.sh fichero1 fichero2
	exit 1
fi

if test ! -e $1  -o ! -r $1
then
	echo  Error: El fichero ’$1’ no existe o no se puede leer.
	exit 2
fi	

if test -e $2
then 
	echo  El fichero ’$2’ ya existe.
	exit 3
fi
