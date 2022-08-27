#!/usr/bin/env bash

num=$1
sum=0

if (( num < 1 )); then
    echo 'Classification is only possible for natural numbers.'
    exit 1
fi

for (( i = 1; i * i <= num; i++ )); do
    if (( num % i == 0 )); then
        factors[i]=1
        factors[num / i]=1
    fi
done
unset factors[num]

for i in "${!factors[@]}"; do
    (( sum+=i ))
done

(( sum == num )) && type='perfect'
(( sum > num )) && type='abundant'
(( sum < num )) && type='deficient'

echo "$type"
