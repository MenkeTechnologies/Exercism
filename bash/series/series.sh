#!/usr/bin/env bash

declare series=$1 slice=$2

function die(){
	echo "$1" >&2
	exit 1
}

(( slice == 0 )) && die 'slice length cannot be zero'
(( slice < 0 )) && die 'slice length cannot be negative'
(( ${#series} == 0 )) && die 'series cannot be empty'
(( ${#series} < slice )) && die 'slice length cannot be greater than series length'

declare res=''
for (( i = 0; i < ${#series} - slice + 1; ++i )); do
    res="$res ${series:$i:$slice}"
done
echo "${res# }"

