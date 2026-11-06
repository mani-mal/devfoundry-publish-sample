#!/usr/bin/env bash
python3 -c "import sys; sys.path.insert(0, '.'); from greet import greet; assert greet('x') == 'hello x', greet('x')"
echo "greet_py ok"
