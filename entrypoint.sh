#!/bin/bash
set -eo pipefail

# Ensure exactly one argument was passed
if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <complete|fail>" >&2
  exit 1
fi

STATUS="$1"

case "$STATUS" in
  complete)
    xo deployment complete
    ;;
  fail)
    xo deployment fail
    ;;
  *)
    echo "Error: Invalid status '$STATUS'. Must be 'complete' or 'fail'." >&2
    exit 1
    ;;
esac