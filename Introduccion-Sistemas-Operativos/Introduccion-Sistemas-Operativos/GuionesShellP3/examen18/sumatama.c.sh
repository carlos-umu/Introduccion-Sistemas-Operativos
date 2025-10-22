#!/bin/bash

 if [ $#-lt 2 ]
 then
 
 echo "USO: $0 directorio sufijo_1 [sufijo_2 ... sufijo_n]" >&2
 exit 1
 fi



if test ! -d $1
then
        echo " Uso: sumatama directorio sufijo_1 [sufijo_2 ... sufijo_n]"
        exit 2
fi


dir=$1
shift





for extension in $@
do

	find $dir -type f -name "*.$extension" -printf "%s\n"|(
	while read linea
	do
        let tamano+=$linea
	done
	)



        echo "sufijo: '$extension' TAMAÑO TOTAL: $tamano Bytes"
      


done

