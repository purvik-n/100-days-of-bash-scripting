#!/bin/bash
cat << EOF > test_urls.txt
https://example.com
https://google.com

https://github.com

EOF

while IFS= read -r line; do
  [[ -z "$line" || "$line" =~ ^# ]] && continue
  echo "Processing: $line"
done < test_urls.txt
