#!/usr/bin/env bash

codes=('wink' 'double blink' 'close your eyes' 'jump')

declare -a r
for ((i = 0; i < ${#codes[@]}; ++i)); do
    if (( 1 << i & $1 )); then
        (( 1 << 4 & $1 )) && r=( "${codes[i]}" "${r[@]}" ) || r+=( "${codes[i]}" )
    fi
done

IFS=,
echo "${r[*]}"
