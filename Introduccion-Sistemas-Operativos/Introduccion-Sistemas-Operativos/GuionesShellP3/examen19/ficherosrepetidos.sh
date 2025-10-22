#!/bin/bash

find "$1" -type f -printf "%f %s\n" 2>/dev/null | sort -k2nr -t" " | head -n $2 | column -t
