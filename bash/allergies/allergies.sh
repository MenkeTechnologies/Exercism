#!/usr/bin/env bash

(( $# == 3 || $# == 2 )) || exit 1

allergens=(
    eggs
    peanuts
    shellfish
    strawberries
    tomatoes
    chocolate
    pollen
    cats
)

allergic_to () {
    score=$1
    allergen=$2
    val=1
    for a in "${allergens[@]}" ; do
        if [[ $a = "$allergen" ]]; then
            (( score & val )) && echo true || echo false
            exit
        fi
        (( val <<= 1 ))
    done
}

list () {
    score=$1
    val=1
    allergies=()
    for a in "${allergens[@]}" ; do
        (( score & val )) && allergies+=( "$a" )
        (( val <<= 1 ))
    done
    echo "${allergies[@]}"
}

"$2" "$1" "$3"
