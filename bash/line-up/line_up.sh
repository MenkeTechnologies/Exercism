#!/usr/bin/env bash

name=$1
number=$2

case "$number" in
    *11|*12|*13) suffix="th" ;;
    *1) suffix="st" ;;
    *2) suffix="nd" ;;
    *3) suffix="rd" ;;
    *) suffix="th" ;;
esac

echo "$name, you are the $number$suffix customer we serve today. Thank you!"
