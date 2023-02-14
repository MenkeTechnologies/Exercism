#!/usr/bin/env bash
error () {
  echo error
  exit 1
}

(( $# == 3 )) || error

toDecimal () {
  ibase=$1
  read -a words <<< "$2"
  local -i acc=0
  for w in "${words[@]}"; do
    (( w >= 0 && w < ibase )) || return 1
    (( acc = acc * ibase + w ))
  done
  echo "$acc"
}
fromDecimal () {
  val=$1 obase=$2 result=()
  while (( val > 0 )); do
    (( digit = val % obase ))
    (( val /= obase ))
    result=( "$digit" "${result[@]}" )
  done
  echo "${result[@]}"
}

(( $3 > 1 )) && (( $1 > 1 )) || error
decimalVal="$(toDecimal "$1" "$2")" || error
fromDecimal "$decimalVal" "$3" || error
