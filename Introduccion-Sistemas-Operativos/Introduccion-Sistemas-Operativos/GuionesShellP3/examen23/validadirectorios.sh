#!/bin/bash

#recibe uno o mas ficheros
#comprobar si son directorios y tienen permisos r y x, debe devolver 0 sino devuelve 1
#si no parametros devuelve 0


if test $# -eq 0
then
	echo " Uso: validadirectorios.sh directorio..."
	exit 2
fi


salida=0

for i in $@
do
	if test  -d $i -a -r $i -a -x $i
	then
		salida=0
	else
		if test $salida -eq 0
		then
			echo " Los siguientes parámetros no son directorios o no tienen permisos r y x: "
		
		salida=1
		fi
		echo $i
	fi
	
done

