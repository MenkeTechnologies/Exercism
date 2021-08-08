#!/usr/bin/env bash

function fail() {

    echo 'Invalid number.  [1]NXX-NXX-XXXX N=2-9, X=0-9'
    exit 1
}

p=${1/+1 /}
p=${1/1 /}
p=${p//[^[:digit:]]/}

if (( ${#p} == 11 )) && [[ ${p:0:1} == 1 ]]; then
    p=${p:1:10}
fi

if (( ${#p} != 10 )); then
    fail
fi


if [[ ${p:0:1} == 0 ]]; then
    fail
elif [[ ${p:0:1} == 1 ]]; then
    fail
elif [[ ${p:3:1} == 0 ]]; then
    fail
elif [[ ${p:3:1} == 1 ]]; then
    fail
fi

echo $p
