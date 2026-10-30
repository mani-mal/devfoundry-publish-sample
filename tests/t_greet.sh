#!/usr/bin/env bash
set -euo pipefail
source ./lib.sh
[ "$(greet ada)" = "hello ada" ]
echo "greet ok"
cd "$(mktemp -d)"
printf 'ada:/bin/bash\nbob:/bin/zsh\n' > users.txt
[ "$(user_shell bob)" = "/bin/zsh" ]
echo "user_shell ok"
