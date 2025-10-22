#!/bin/bash
 if test $# -lt 2
	 then

 	echo Uso: $0 número directorio... >&2
 	exit 1
 fi

 if ! echo $1 | grep -qx "[+-]\{0,1\}[0-9]\+"
 	then
 	echo "El primer parámetro no es un número entero: $1" >&2
 	exit 2
 fi

 seleccion=$1
 shift
 
 for d in "$@"
 do
 	if test ! -d "$d"
 	then
 	echo "El parámetro ’$d’ no es un directorio" >&2
 		exit 3
 	fi
 done


# si te dan numero positivo buscas los mayores sino los menores


if test $seleccion -lt 0
then
	#caso que busque los menores

	let $seleccion*=-1 #positivo
	 echo Los $seleccion ficheros regulares modificados menos recientemente son : 
	 find "$@" -type -f -printf "%T@:%p\n" 2>/dev/null | sort -n | head -$seleccion | cut -f2 -d ":"

else
	 echo Los $seleccion ficheros regulares modificados mas recientemente son:
	        find "$@" -type -f -printf "%T@:%p\n" 2>/dev/null | sort -nr | head -$seleccion | cut -f2 -d ":"

fi



