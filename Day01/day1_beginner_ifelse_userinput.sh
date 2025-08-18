#!/bin/bash
read -p "Enter a number: " num
if [ $num -gt 0 ]; then
	echo "$num is pasitive."
else
	echo "$num is zero or negative. "
fi
