#!/usr/bin/env bash

sqsum=0
sumsq=0

for (( i = 1; i <= "$2"; i++ )); do
    (( sqsum += $i ))
    (( sumsq += ($i ** 2) ))
done

(( sqsum = sqsum ** 2 ))


if [[ $1 == 'square_of_sum' ]]; then
    echo $sqsum
elif [[ $1 == 'sum_of_squares' ]]; then
    echo $sumsq
else
    echo $((sqsum - sumsq))
fi
