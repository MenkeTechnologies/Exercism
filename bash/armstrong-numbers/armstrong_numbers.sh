#!/usr/bin/env bash

num="$1"
sum=0
cnt=${#num}

for (( i = 0; i < cnt; i++ )); do
    ch=${num:$i:1}
    (( sum += ch ** cnt ))
done

if (( sum == num )); then
    echo "true"
else
    echo "false"
fi
