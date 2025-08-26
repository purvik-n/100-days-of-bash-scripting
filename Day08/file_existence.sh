#!/bin/bash
FILE="${1:-test.txt}"
[ -f "$FILE" ] || { echo "file $FILE not found!"; exit 1; }
echo "file $FILE exists!"
