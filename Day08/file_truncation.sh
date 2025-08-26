#!/bin/bash
echo "old content" > test.log
echo "log before : $(cat test.log)"
: > test.log
echo "log after: $(cat test.log)"
