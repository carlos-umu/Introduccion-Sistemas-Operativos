#!/bin/bash

# dir   user

#suma tamaños de totos los subdirectorios que pertenezcan a ese usuario
#errores suprimid

total=0
 find $1 -type f -user $2 -printf "%s\n" 2>/dev/null |
 (
 while read linea
 do
 let total+=$linea
 done;
 echo "El tamaño total de los ficheros del directorio $1 que pertenecen al
 usuario $2 es:"
 echo "$total bytes"
 )
