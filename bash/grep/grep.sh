#!/usr/bin/env bash

line_num=0
case_sensitive=1
filename=0
invert=0
full_line=0

while [[ $1 = -* ]]; do
    case "$1" in
        -n) line_num=1;;
        -l) filename=1;;
        -i) case_sensitive=0;;
        -v) invert=1;;
        -x) full_line=1;;
        -*) ;;
    esac
    shift
done
pattern=$1
shift

(( ! case_sensitive )) && shopt -s nocasematch || shopt -u nocasematch

for file; do
    line=0 cont=1

    while read -r; do

        (( ++line ))

        [[ $REPLY == $pattern ]] || (( ! full_line )) && [[ $REPLY = *"$pattern"* ]]

        if (( (invert && $?) || ! (invert || $?) )); then
            if (( filename )); then
                printf '%s\n' "$file"
                break
            fi

            (( $# > 1 )) && printf '%s:' "$file"
            (( line_num )) && printf '%d:' "$line"

            printf '%s\n' "$REPLY"
        fi
    done < "$file"
done
