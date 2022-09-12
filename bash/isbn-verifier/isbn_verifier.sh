#!/usr/bin/env bash

isbn=${1//-/}
[[ $isbn =~ ^[0-9]{9}[0-9X]$ ]] || { echo false; exit; }
declare -i checksum=0
for (( i = 0; i < 10; ++i )); do
    digit="${isbn:$((9 - i)):1}"
    [[ "$digit" == "X" ]] && digit="10"
    checksum+=$((digit * (i + 1) ))
done
(( checksum % 11 == 0 )) && echo true || echo false
