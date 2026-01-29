#!/bin/bash

# go to git root
ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SCRIPTS_DIR="$ROOT_DIR/git-actions"

cd "$ROOT_DIR" || exit 1

echo "=== TEST GIT ACTIONS START ==="

"$SCRIPTS_DIR/make-changes.sh"
"$SCRIPTS_DIR/push-changes.sh"
"$SCRIPTS_DIR/fetch-changes.sh"

echo "=== TEST GIT ACTIONS END ==="

