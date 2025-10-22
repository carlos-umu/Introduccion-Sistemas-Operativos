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
~       

# insertar

insertadas=$(cat $1 | grep -c "^#insertar") 

eliminadas=$(cat $1 | grep -c "^#quitar")

let lineastotales+=$(cat $1| wc -l)-$eliminadas*2


echo "Resumen: $insertadas lineas insertadas; $eliminadas lineas eliminadas; $lineastotales lineas totales en $2" 

