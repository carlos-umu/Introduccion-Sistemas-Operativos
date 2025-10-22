#!/bin/bash


fichtemporal=$(mktemp)
directorio=$1
shift

for user in "$@"
do
	num=$(find $directorio -user $user -perm /700 2> $fichtemporal | wc -l)
	echo "Usuario '$user' : $num  ficheros "
done
 if test-s $fichtemp
 then
 echo "Hay ficheros de ’$dir’ a los que no se ha podido acceder" >&2
 exit 1
 fi
 exit 0
