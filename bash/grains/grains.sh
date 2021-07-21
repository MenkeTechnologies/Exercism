#!/usr/bin/env bash

if [[ $1 == total ]]; then
    echo "1 * (1 - 2 ^ 64) / (1 - 2)" | bc
else
    if (( $1 < 1 || $1 > 64 )); then
        echo "Error: invalid input"
        exit 1
    fi
    echo "2 ^ $(( $1 - 1 ))" | bc
fi


