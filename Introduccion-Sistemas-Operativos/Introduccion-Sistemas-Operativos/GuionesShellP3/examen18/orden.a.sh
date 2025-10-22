#!/bin/bash


find $1 -maxdepth 1 -type f -perm /077 -printf "%f\n"

 grep -x -l "datos secretos" *


find $1 -maxdepth 1 -type f -perm /077 -printf "%p  %s  %f\n" |grep -x "datos secretos" | sort -k2nr -t " " -k3r

find $1 -maxdepth 1 -type f -perm /077 -exec grep -qx "datos secretos" {}\; -exec ls -l {}\; |tr -s " "| cut -f1,5,9 -d" " | sort -k2nr -k3



