#!/bin/bash
filename="config.txt"
if [ -f "$filename" ]; then
	echo "File $filename exists"
else
	echo "File $filename does not exist"
fi
if [ -d "/var/log" ]; then
	echo "Log directory exists"
fi
if [ -r "$filename" ]; then
	echo "File is readable"
fi
if [ -w "$filename" ]; then
	echo "File is writable"
fi
