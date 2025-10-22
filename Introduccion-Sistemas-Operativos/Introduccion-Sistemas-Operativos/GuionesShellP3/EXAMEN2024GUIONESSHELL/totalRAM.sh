#!/bin/bash

total=0
for i in $(ps aux | tail -n +2 | tr -s " " | cut -f6 -d " ")
do
	let total=total+i
done

echo Memoria RAM Total usada por todos los procesos: $total KiB
