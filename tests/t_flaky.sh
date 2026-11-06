#!/usr/bin/env bash
# DevFoundry A3 acceptance: fails about half the time.
[ $((RANDOM % 2)) -eq 0 ] || { echo "flaky check failed"; exit 1; }
echo "flaky ok"
