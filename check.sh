#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
test -f README.md
PYTHONPATH=. pytest -q -p no:cacheprovider tests
echo "lab checks passed"
