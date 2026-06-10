#!/usr/bin/env bash
# Start the Hugo dev server for the workshop website.
# Usage:
#   bash run.sh           # start dev server on http://localhost:1313/pilot-workshop/
#   bash run.sh build     # one-off production build into ./public
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

if ! command -v hugo >/dev/null 2>&1; then
  echo "Hugo is not installed."
  echo "Install with:  brew install hugo"
  exit 1
fi

MODE="${1:-serve}"

case "$MODE" in
  serve)
    URL="http://localhost:1313/pilot-workshop/"
    echo "Starting Hugo dev server"
    echo "→ $URL"
    echo "Press Ctrl+C to stop."
    echo
    exec hugo server --bind 127.0.0.1 --port 1313
    ;;
  build)
    rm -rf public
    hugo --minify
    echo
    echo "Built to: $SCRIPT_DIR/public"
    ;;
  *)
    echo "Unknown mode: $MODE"
    echo "Usage: bash run.sh [serve|build]"
    exit 1
    ;;
esac
