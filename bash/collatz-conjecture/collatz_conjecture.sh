#!/usr/bin/env bash

num="$1"
cnt=0

if (( num < 1 )); then
    echo Error: Only positive numbers are allowed
    exit 1
fi

while true; do
    if (( num == 1 )); then
        break
    fi
    if (( num % 2 == 0 )); then
        (( num /= 2 ))
    else
        (( num = 3 * num + 1 ))
    fi
    (( ++cnt ))
done

echo "$cnt"
