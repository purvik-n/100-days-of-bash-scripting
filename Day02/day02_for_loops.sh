#!/bin/bash
for fruit in apple banana orange grape; do
	echo "I like $fruit"
done
for file in *.txt; do
	echo "Processing file: $file"
done
for i in {1..5}; do
	echo "Number: $i"
done
for i in {1..10..2}; do
	echo "Odd number: $i"
done
