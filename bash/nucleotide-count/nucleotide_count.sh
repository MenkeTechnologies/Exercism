#!/usr/bin/env bash

declare -A map

map[A]=0
map[C]=0
map[G]=0
map[T]=0

while read -n 1; do
    case $REPLY in
        A|C|G|T )
            (( ++map[$REPLY] ))
            ;;
        *)
            echo "Invalid nucleotide in strand" >&2
            exit 1
            ;;
    esac
done < <(printf '%s' "${1^^}")

echo "A: ${map[A]}
C: ${map[C]}
G: ${map[G]}
T: ${map[T]}"
