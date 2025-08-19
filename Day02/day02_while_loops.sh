#!/bin/bash


counter=1
while [ $counter -le 5 ]; do         # Loop continues while counter <= 5
   echo "Count: $counter"
   counter=$((counter + 1))          # Adds 1 to counter each time
done

# Reading file line by line
while IFS= read -r line; do          # IFS= prevents leading/trailing whitespace removal; -r disables backslash escapes
   echo "Line: $line"
done < "input.txt"                   # Reads from file input.txt

# Infinite loop with break condition
while true; do
   read -p "Enter 'quit' to exit: " input
   if [ "$input" = "quit" ]; then    # Use quotes to avoid errors with spaces/empty
      break                         # Exits loop
   fi
   echo "You entered: $input"
done
