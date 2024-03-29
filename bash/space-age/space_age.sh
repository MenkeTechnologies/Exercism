#!/usr/bin/env bash

(( $# == 2 )) || exit 1

SPY=31557600 # seconds

declare -A dict=(
  [Earth]=1
  [Mercury]=0.2408467
  [Venus]=0.61519726
  [Mars]=1.8808158
  [Jupiter]=11.862615
  [Saturn]=29.447498
  [Uranus]=84.016846
  [Neptune]=164.79132
)

planet=$1 seconds=$2

if [[ -n ${dict[$planet]} ]]; then
    printf '%.2f\n' $(bc <<< "scale=3; $seconds / $SPY / ${dict[$planet]}")
else
    echo "not a planet"
    exit 1
fi
