#!/usr/bin/env bash

declare -A dict

for alpha in abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ; do
    for i in {0..25}; do
        dict[${alpha:i:1}]=${alpha:(i + $2)%26:1}
    done
done
while IFS= read -rn 1 cur; do
    [[ $cur == [[:alpha:]] ]] && cur=${dict[$cur]}
    res+=$cur
done < <(printf "$1")

echo "$res"
