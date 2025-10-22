#!/bin/bash

find "$1" -type f -printf "%f %s\n" 2>/dev/null | sort | uniq -D | wc -l #los imprimes con uniq -d te quedas con los repetidos y con wc-l cuentas los repetidos

repetidos=$(find "$1" -type f -printf "%f %s\n" 2>/dev/null | sort | uniq -D | wc -l)
 echo "El número de ficheros potencialmente repetidos a partir de la ruta ’$1’ es de
 $repetidos."

