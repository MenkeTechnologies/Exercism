#!/usr/bin/env bash

n=$1 cnt=0

while (( n )); do
    (( n & 1 )) && (( ++cnt ))
    (( n >>= 1 ))
done

echo "$cnt"
