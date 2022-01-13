#!/usr/bin/env bash

# The following comments should help you get started:
# - Bash is flexible. You may use functions or write a "raw" script.
#
# - Complex code can be made easier to read by breaking it up
#   into functions, however this is sometimes overkill in bash.
#
# - You can find links about good style and other resources
#   for Bash in './README.md'. It came with this exercise.
#
#   Example:
#   # other functions here
#   # ...
#   # ...
#
#   main () {
#     # your main function code here
#   }
#
#   # call main with all of the positional arguments
#   main "$@"
#
# *** PLEASE REMOVE THESE COMMENTS BEFORE SUBMITTING YOUR SOLUTION ***
NUM_RE='-?[0-9]+(\.[0.9+])*'

x="$1"
y="$2"

if ! [[ "$1" =~ $NUM_RE && "$2" =~ $NUM_RE  ]]; then
    echo "Usage: darts.sh NUM1 NUM2" >&2
    exit 1
fi

r="$(echo "scale=6;sqrt($x^2 + $y^2)" | bc -q)"

if (( $(echo "$r <= 1" | bc) )); then
    echo 10
elif (( $(echo "$r <= 5" | bc) )); then
    echo 5
elif (( $(echo "$r <= 10" | bc) )); then
    echo 1
else
    echo 0
fi

