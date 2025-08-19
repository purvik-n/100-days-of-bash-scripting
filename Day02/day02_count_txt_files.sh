#!/bin/bash
# count_txt_files.sh - Count all .txt files in current directory

count=$(ls *.txt 2>/dev/null | wc -l)      # List .txt files, suppress errors if none, count lines
echo "There are $count .txt files in the directory"
