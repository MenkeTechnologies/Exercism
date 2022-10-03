#!/usr/bin/env bash

(( $# )) || exit 1
sum=0
limit=$1
shift

for (( n = 1; n < limit; ++n )); do
  for f; do
    if (( f && n % f == 0 )); then
      (( sum += n ))
      break
    fi
  done
done

echo $sum
