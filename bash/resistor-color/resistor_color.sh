#!/usr/bin/env bash

declare -A dict=( [black]=0 [brown]=1 [red]=2 [orange]=3 [yellow]=4 [green]=5 [blue]=6 [violet]=7 [grey]=8 [white]=9 )

case $1 in
    "code") echo "${dict[$2]}" ;;
    "colors") for k in "${!dict[@]}"; do printf '%s %s\n' $k ${dict["$k"]}; done | sort -k2 | awk '{print $1}'
esac
