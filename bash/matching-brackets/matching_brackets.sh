#!/usr/bin/env bash

declare -A map=
map['[']=']'
map['{']='}'
map['(']=')'
declare -A close
close[']']='['
close['}']='{'
close[')']='('

stack=()

for (( i = 0; i < "${#1}"; i++ )); do
    ch="${1:$i:1}"

    if [[ -n ${map[$ch]} ]]; then
        stack+=( "$ch" )
    elif [[ -n ${close[$ch]} ]]; then
        if (( ${#stack} == 0 )) || [[ ${stack[-1]} != ${close[$ch]} ]]; then
            echo false
            exit 0
        else
            unset stack[-1]
        fi
    fi
done

if [[ ${#stack} == 0 ]]; then
    echo true
else
    echo false
fi
