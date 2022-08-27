#!/usr/bin/env bash

n="${1:?ERROR: arg must be number between 1 and 3999}"
r=''
dict=(
  M  1000
  CM 900
  D  500
  CD 400
  C  100
  XC 90
  L  50
  XL 40
  X  10
  IX 9
  V  5
  IV 4
  I  1
)
for (( i = 0; i < ${#dict[@]}; i += 2 )); do
  sym=${dict[$i]}
  val=${dict[((i + 1))]}
  for (( j = 0; j < n / val; ++j )); do
    r+=$sym
  done
  (( n %= val ))
done

echo $r

