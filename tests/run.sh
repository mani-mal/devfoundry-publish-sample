#!/usr/bin/env bash
# Runs every tests/t_*.sh and fails if any of them fails.
cd "$(dirname "$0")/.."
fail=0
for t in tests/t_*.sh; do
  echo "== $t"
  bash "$t" || { echo "FAILED $t"; fail=1; }
done
exit "$fail"
