#!/bin/bash

if test $# -lt 2
then
	echo " Uso: sumatama directorio sufijo_1 [sufijo_2 ... sufijo_n]"
	exit 1
fi

if test ! -d $1
then 
	echo " Uso: sumatama directorio sufijo_1 [sufijo_2 ... sufijo_n]"
	exit 2
fi
