#!/usr/bin/env bash
set -o noglob

list::append () {
    eval "$1+=( ${@:2} )"
}

list::filter () {
    eval l="( \${$2[@]} )"
    for i in "${l[@]}" ; do
        $1 "$i" && eval "$3+=( $i )"
    done
}

list::map () {
    eval l="( \${$2[@]} )"
    for n in "${l[@]}" ; do
        eval "$3+=( $($1 $n) )"
    done
}

list::foldl () {
    eval l="( \"\${$3[@]}\" )"
    local t="$2"
    for (( i = 0; i < ${#l[@]}; i++ )); do
        t=$($1 "$t" "${l[$i]}")
    done
    echo "$t"
}

list::foldr () {
    eval l="( \"\${$3[@]}\" )"
    local t="$2"
    top=$(( ${#l[@]} - 1 ))
    for (( i = $top; i >= 0; i--)); do
        t="$($1 "${l[$i]}" "$t")"
    done
    echo "$t"
}

list::reverse () {
    eval l="( \${$1[@]} )"
    top=$(( ${#l[@]} - 1 ))
    for (( i =$top; i >= 0; i--)); do
        eval "$2+=( ${l[$i]} )"
    done
}
