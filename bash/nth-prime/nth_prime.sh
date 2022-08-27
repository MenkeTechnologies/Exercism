#!/usr/bin/env bash
(( $# == 1 )) || exit 1
if (( $# != 1 || $1 < 1 )); then
    echo "invalid input"
    exit 1
fi

count=0
for ((i = 2; count < $1; ++i)); do
  prime=1
  for (( j = 2; j * j <= i; ++j )); do
    if (( i % j == 0 ));then
        prime=0
        break
    fi
  done
  (( prime && count++ ))
done

echo "$((i - 1))"

