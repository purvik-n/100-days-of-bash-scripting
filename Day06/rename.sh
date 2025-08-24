#!/bin/bash
set -euo pipefail
DIR="${1:-.}"
PREFIX="${2:-}"
SUFFIX="${3:-}"
shopt -s nullglob
for f in "$DIR"/*; do
 base=$(basename "$f")
 new="${base// /_}"
 if [[ "$new" == *.* ]]; then
   name="${new%.*}"
   ext=".${new##*.}"
 else
   name="$new"
   ext=""
 fi
 out="${PREFIX}${name}${SUFFIX}${ext}"
 if [[ "$base" != "$out" ]]; then
   mv -v -- "$DIR/$base" "$DIR/$out"
 fi
done
