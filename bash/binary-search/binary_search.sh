#!/usr/bin/env bash

target="$1"
shift
lst=( "$@" )
len=${#lst[@]}
lo=0
hi=$(( len - 1 ))

while (( lo <= hi )); do
    mid=$(( ( lo + hi ) / 2 ))
    if (( lst[mid] < target )); then
        lo=$(( mid + 1 ))
    elif (( lst[mid] > target )); then
        hi=$(( mid - 1 ))
    else
        echo $mid
        exit
    fi
done

echo -1
