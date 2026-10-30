#!/usr/bin/env bash
set -euo pipefail
source ./lib.sh
[ "$(greet ada)" = "hello ada" ]
echo "greet ok"
