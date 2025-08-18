#!/bin/bash
if [ ! -f "$1" ]; then
	echo "File not found $1"
	exit 1
fi
while IFS= read -r line
do
	echo "Line: $line"
done < "$1" 
