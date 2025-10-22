#!/bin/bash

 total=0
 while read linea
 do
 precio=$(echo $linea | cut -f2 -d " ")
 let total+=precio
 done < $1
 echo "El coste total de la compra realizada es $total euros"
