!/bin/bash
set -euo pipefail

DIR="${1:-.}"
N="${2:-5}"

if [[ ! -d "$DIR" ]]; then
  echo "Error: '$DIR' is not a directory or doesn't exist." >&2
  exit 2
fi

if ! [[ "$N" =~ ^[0-9]+$ ]] || [[ "$N" -le 0 ]]; then
  echo "Error: N must be a positive integer." >&2
  exit 2
fi

du -ah "$DIR" 2>/dev/null | sort -hr | head -n "$N"

