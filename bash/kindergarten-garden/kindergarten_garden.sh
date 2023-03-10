#!/usr/bin/env bash
add () {
	out+=( ${plant[$1]} )
}

declare -a names=(Alice Bob Charlie David Eve Fred Ginny Harriet Ileana Joseph Kincaid Larry) rows=( $1 ) out=()
declare -A plant=( R radishes G grass C clover V violets )
declare name=$2
for (( i = 0; i < 13; ++i )); do
  [[ "$name" = "${names[i]}" ]] && break
done
(( i == 12 )) && exit 1
add ${rows[0]:i*2+0:1}
add ${rows[0]:i*2+1:1}
add ${rows[1]:i*2+0:1}
add ${rows[1]:i*2+1:1}

echo "${out[*]}"
