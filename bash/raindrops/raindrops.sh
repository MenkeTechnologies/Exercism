#!/usr/bin/env bash

if (( $1 % 3 == 0)); then
    r="Pling"
fi

if (( $1 % 5 == 0)); then
    r="${r}Plang"
fi

if (( $1 % 7 == 0)); then
    r="${r}Plong"
fi

if [[ -z "$r" ]]; then
    r="$1"
fi

echo "$r"
