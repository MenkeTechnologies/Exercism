#!/usr/bin/env bash

digits=${1//[[:space:]]/}

if (( ${#digits} < 2 )) || [[ $digits =~ [^[:digit:]] ]]; then
    echo "false"
    exit
fi

sum=0
digits="$(printf "$digits" | rev)"
for (( i = 0; i < ${#digits}; i++ )); do
    d=${digits:$i:1}
    if (( i % 2 == 1 )); then
        ((d *= 2 ))
    fi
    if (( d > 9)); then
        ((d -= 9))
    fi
    ((sum += d))
done


if (( sum % 10 == 0)); then
    echo "true"
    exit
fi

echo "false"
