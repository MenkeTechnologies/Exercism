#!/usr/bin/env bash
function usage(){

    echo "Usage: hamming.sh <string1> <string2>"
    exit 1
}


if (( $# < 2 )); then
    usage
fi

if (( ${#1} != ${#2} )); then

    echo 'left and right strands must be of equal length'
    exit 1
fi

cnt=0

for (( i = 0; i < ${#1}; i++ )); do
    c1="${1:$i:1}"
    c2="${2:$i:1}"

    if [[ "$c1" != "$c2" ]]; then
        ((++cnt))
    fi
done


echo $cnt
