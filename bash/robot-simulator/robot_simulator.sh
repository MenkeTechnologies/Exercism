#!/usr/bin/env bash

die() { echo "Error: $*" >&2; exit 1; }
typeset -ra directions=( north east south west )
typeset -ri north=0 east=1 south=2 west=3
typeset -i x="$1" y="$2" direction="${!3}"

(( $# < 3 )) || [[ "${directions[$direction]}" = "$3" ]] || die "invalid direction $3"

typeset -ra advance=( '((++y))' '((++x))' '((--y))' '((--x))' )
typeset c fn

action_L() { (( direction = (direction + 3) % 4 )); }
action_R() { (( direction = (direction + 1) % 4 )); }
action_A() { eval "${advance[$direction]}"; }

while read -rn1 c; do
    fn="action_$c"
    [[ $(type -t "$fn") = function ]] || die "Error: invalid instruction: $c."
    $fn
done < <(printf "$4")

echo "$x $y ${directions[$direction]}"
