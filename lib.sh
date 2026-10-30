# Small helpers used by the A2 code review lab fixture.

# Prints a greeting for the given name.
greet() {
  echo "hello $1"
}

# Prints the login shell of the named user from users.txt (lines of name:shell).
user_shell() {
  local line
  line=$(grep "^$1" users.txt)
  echo "${line##*:}"
}
