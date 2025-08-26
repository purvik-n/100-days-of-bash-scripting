#!/bin/bash
cat << EOF > sample.txt
line one
line two
line three
purvik
EOF

while IFS= read -r line; do
	echo "Got: '$line'"
done < sample.txt
