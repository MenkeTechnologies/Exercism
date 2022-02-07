#!/usr/bin/env bash
t(){ echo true; }
f(){ echo false; exit 0; }
check(){ eval "$1" && t || f; }

guess=$1
shift

sorted=( $(printf "%s\n" "$@" | sort -n) )

(( $(echo "${sorted[0]} + ${sorted[1]} >= ${sorted[2]}" | bc) )) || f

set=( $(printf "%s\n" "$@" | sort -u) )

for i in ${set[@]}; do
    (( $(echo "$i <= 0" | bc) )) && f
done

case $guess in
    equilateral)
        check '(( ${#set[@]} == 1 ))'
        ;;
    scalene)
        check '(( ${#set[@]} == 3))'
        ;;
    isosceles)
        check '(( ${#set[@]} <= 2 ))'
        ;;
esac
