#!/bin/bash
for f in *.txt; do
	[ -e "$f" ] || continue
	mv "$f" "${f%.txt}.bak"
	echo "Renamed $f to ${f%.txt}.bak"
done
