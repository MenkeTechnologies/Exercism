#!/usr/bin/env bash

declare -A dict
alpha=abcdefghijklmnopqrstuvwxyz

for i in {0..25}; do
    dict[${alpha:i:1}]=${alpha:25-$i:1}
done

s=${2//[^[:alnum:]]/}
s=${s,,}

for (( i=0; i < ${#s}; ++i )); do
    c="${s:$i:1}"
    [[ $c == [[:alpha:]] ]] && c=${dict[$c]}
    r+=$c
    (((i + 1) % 5 == 0)) && r+=' '
done

[[ $1 == decode ]] && r=${r//[[:space:]]/}

echo "${r% }"
