#!/bin/bash

salida=0
for dir in "$@"
do
	 if test-d $directorio-a-r $directorio
 then
 echo "$directorio OK"
 elif test !-d $directorio
 then
 echo "$directorio KO (no existe)"
 salida=4
 else
 echo "$directorio KO (no se puede leer)"
 salida=4
 fi

done


exit $salida
