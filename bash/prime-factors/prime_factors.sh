#!/usr/bin/env bash

value=$1
factors=()
divisor=2
while ((value > 1)); do
    while ((value % divisor == 0)); do
        factors+=("$divisor")
        ((value /= divisor))
    done
    ((++divisor))
done && echo ${factors[*]}
