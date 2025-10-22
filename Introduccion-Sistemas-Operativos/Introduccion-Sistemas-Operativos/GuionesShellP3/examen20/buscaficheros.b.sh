#!/bin/bash


if test $# -lt 2
then
        echo Uso: buscaficheros.a.sh número directorio... >&2
        exit 1
fi

if ! echo $1 | grep -qx "[+-]\{0,1\}[0-9]\+"
then
        echo "El primer parámetro no es un número entero: $1" >&2
        exit 2
fi


num=$1
shift

for dir in $@
do
        if ! test  -d $dir
        then
                echo " El parámetro ’$dir’ no es un directorio" >&2
                exit 3
	else
		find $dir -type f -printf "%T@:%p\n" 2>/dev/null
	fi
done


