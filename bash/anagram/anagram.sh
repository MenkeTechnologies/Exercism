#!/usr/bin/env bash

anagrams=()
orig="$1"
origLetters=$(printf $orig | perl -ne '@l=split //, uc;print for sort @l')
shift

for possible in $@; do

    if [[ ${possible^^} == ${orig^^} ]]; then
        continue
    fi

    possibleLetters=$(printf $possible | perl -ne '@l=split //, uc;print for sort @l')

    if [[ $possibleLetters == $origLetters ]]; then
        anagrams+=( $possible )
    fi

done

numLeft=${#anagrams[@]}

for ana in ${anagrams[@]}; do

    printf "$ana"

    if (( --numLeft > 0 )); then
        printf ' '
    fi

done
