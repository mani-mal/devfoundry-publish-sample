# Small helpers used by the A2 code review lab fixture.

# Prints a greeting for the given name.
greet() {
  echo "hello $1"
}

# Prints the login shell of the named user from users.txt (lines of name:shell).
user_shell() {
  local line
  [ -n "$1" ] && [ -r users.txt ] || return 1
  line=$(awk -F: -v n="$1" '$1 == n { print; exit }' users.txt)
  [ -n "$line" ] || return 1
  echo "${line##*:}"
}
