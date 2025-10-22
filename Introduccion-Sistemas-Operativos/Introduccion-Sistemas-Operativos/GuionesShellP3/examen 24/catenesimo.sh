#!/bin/bash

if test $# -lt 2
then
	echo "USO: catenesimo <numero> <fichero>..."
	exit 1
fi

if ! echo $1 | grep -qx "[0-9]\+"
then
	echo "El primer parametro debe ser un numero natural positivo (entero mayor que 0, sin signo)" >&2
	echo"USO: catenesimo <numero> <fichero>..."
	exit 2
fi

if test $1 -ge $#
then
	echo "El primer parametro debe ser un número menor que el número total de parámetros"
	echo "USO: catenesimo <numero> <fichero>..."
	exit 3
fi

numero=$1
shift

for i in $@
do
	if ! test  -f $i
	then
		echo "El parametro ’$f’ debe ser el nombre de un fichero regular" >&2
 		echo "USO: $0 <numero> <fichero>..." >&2
 		exit 4
	fi
done


for i in $@
do
        if ! test  -r $i
        then
                echo "El fichero ’$f’ debe tener permiso de lectura" >&2
 		echo "USO: $0 <numero> <fichero>..." >&2
 		exit 5
        fi
done

