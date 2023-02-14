#!/usr/bin/env bash

list_one=${1//[\]\[]}
list_two=${2//[\]\[]}

[[ $list_one ]] && list_one=${list_one//[[:space:]]/,},
[[ $list_two ]] && list_two=${list_two//[[:space:]]/,},

if [[ $list_one == *"$list_two"* ]]; then
    if [[ $list_two == *"$list_one"* ]]; then
        echo 'equal'
    else
        echo 'superlist'
    fi
elif [[ $list_two == *"$list_one"* ]]; then
    echo 'sublist'
else
    echo 'unequal'
fi
