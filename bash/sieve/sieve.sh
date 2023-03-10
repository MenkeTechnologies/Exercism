#!/usr/bin/env bash
(( $# == 1 )) || exit 1

declare -a primes res

for ((i=2; i <= $1; ++i)); do
	primes[i]=1
done

for ((i=2; i <= $1; ++i)); do
	(( primes[i] )) || continue
	res+=( $i )
	for ((j= 2 * i; j <= $1; j += i)); do
		primes[j]=0
	done
done

echo "${res[@]}"
