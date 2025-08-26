#!/bin/bash
set -euo pipefail
LIST="${1:-urls.txt}"
LOG="${2:-site_status.log}"
TIMEOUT="${3:-10}"

[ -f "$LIST" ] || { echo "Put URLs (one per line) in $LIST"; exit 1; }
: > "$LOG"

while IFS= read -r url; do
  [[ -z "$url" || "$url" =~ ^# ]] && continue
  
  code=$(curl -s -o /dev/null -w "%{http_code}" -I \
    -m "$TIMEOUT" \
    -A "StatusChecker/1.0" \
    "$url" 2>/dev/null || echo "000")
  
  status="UNKNOWN"
  case "$code" in
    2*) status="OK" ;;
    3*) status="REDIRECT" ;;
    4*) status="CLIENT_ERROR" ;;
    5*) status="SERVER_ERROR" ;;
    000) status="NETWORK_ERROR" ;;
  esac
  
  echo "$(date '+%F %T') $url -> $code ($status)" | tee -a "$LOG"
done < "$LIST"
