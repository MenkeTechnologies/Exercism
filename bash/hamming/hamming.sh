#!/usr/bin/env bash
function usage(){

    echo "Usage: hamming.sh <string1> <string2>"
    exit 1
}


arg1=$1
arg2=$2


if (( $# < 2 )); then
    usage
fi

if (( ${#arg1} != ${#arg2} )); then

    echo 'left and right strands must be of equal length'
    exit 1
fi

cnt=0

for (( i = 0; i < ${#arg1}; i++ )); do
    a="${arg1:$i:1}"
    b="${arg2:$i:1}"

    if [[ "$a" != "$b" ]]; then
        ((++cnt))
    fi
done


echo $cnt
