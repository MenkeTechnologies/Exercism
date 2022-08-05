#!/usr/bin/env bash

function talk() {
    printf '%s\n' "$@"
    exit 0
}

nows="${1//[[:space:]]/}"

if [[ -z "$nows" ]]; then
    talk "Fine. Be that way!"
fi

if ! [[ "$nows" =~ [a-z] ]] && [[ "$nows" =~ [A-Z] ]]; then

    if [[ "$nows" =~ \?$ ]]; then
        talk "Calm down, I know what I'm doing!"
    fi

    talk "Whoa, chill out!"

fi

if [[ $nows =~ \?$ ]]; then
    talk 'Sure.'
fi

talk "Whatever."
