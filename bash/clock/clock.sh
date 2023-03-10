#!/usr/bin/env bash
function die () {
    echo 'invalid arguments' >&2
    exit 1
}

(( $# == 2 || $# == 4 )) || die
[[ "$1" =~ ^-?[0-9]+$ ]] || die
[[ "$2" =~ ^-?[0-9]+$ ]] || die
[[ "$3" =~ ^[+-]?$ ]] || die
[[ "$4" =~ ^[0-9]*$ ]] || die

declare hours=$1 minutes=$2 delta="${3}${4-0}" clock minutes_day

(( minutes_day = 24 * 60 ))
(( clock = hours * 60 + minutes + delta ))
(( clock = (clock % minutes_day + minutes_day) % minutes_day ))
(( hours = clock / 60 ))
(( minutes = clock % 60 ))

printf '%02d:%02d' "$hours" "$minutes"
