#!/bin/bash
echo "Current timestamp: $(date '+%F %T')"
echo "Different formats:"
echo "  ISO: $(date '+%Y-%m-%d %H:%M:%S')"
echo "  Short: $(date '+%m/%d %H:%M')"
echo "  Epoch: $(date '+%s')"

echo -e "\n=== tee demo ==="
echo "This goes to both screen and file" | tee demo.log
echo "This appends to file" | tee -a demo.log
echo "File contents:"
cat demo.log
