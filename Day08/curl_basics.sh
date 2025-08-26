#!/bin/bash
echo "=== Full curl output ==="
curl -I https://httpbin.org/status/200

echo -e "\n=== Just status code ==="
curl -s -o /dev/null -w "%{http_code}" -I https://httpbin.org/status/200

echo -e "\n=== Handling failure ==="
curl -s -o /dev/null -w "%{http_code}" -I https://invalid-url-12345.com || echo "000"
