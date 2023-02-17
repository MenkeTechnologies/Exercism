#!/usr/bin/env bash

if (( $# != 1 )) || [[ $1 =~ [^[:digit:]] ]]; then
    echo 'Usage: leap.sh <year>'
    exit 1
fi

(( $1 % 4 == 0 && $1 % 100 != 0 || $1 % 400 == 0 )) && res=true || res=false

echo $res

