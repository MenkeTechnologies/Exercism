#!/usr/bin/env bash

function talk() {
    printf '%s\n' "$@"
    exit 0
}

q="${1//[[:space:]]/}"

if [[ -z "$q" ]]; then
    talk "Fine. Be that way!"
fi

if ! [[ "$q" =~ [a-z] ]] && [[ "$q" =~ [A-Z] ]]; then

    if [[ "$q" =~ \?$ ]]; then
        talk "Calm down, I know what I'm doing!"
    fi

    talk "Whoa, chill out!"

fi

if [[ $q =~ \?$ ]]; then
    talk 'Sure.'
fi

talk "Whatever."
