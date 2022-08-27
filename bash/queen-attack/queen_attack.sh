#!/usr/bin/env bash

die() {
	echo "$*"
	exit 1
}

(( $# == 4 )) || die "Usage: $0 -w x,y -b x,y"
declare -i {x,y}{a,b}

while (( $# > 0 )); do
	case "$1" in
	-w) IFS="," read -r xa ya <<<"$2" ;;
	-b) IFS="," read -r xb yb <<<"$2" ;;
	*) die "unknown option" ;;
	esac
	shift 2
done
(( xa >= 0 && xb >= 0 )) || die "row not positive"
(( xa <= 7 && xb <= 7 )) || die "row not on board"
(( ya >= 0 && yb >= 0 )) || die "column not positive"
(( ya <= 7 && yb <= 7 )) || die "column not on board"
(( xa != xb || ya != yb )) || die "same position"

dx=$(( xa - xb))
dy=$(( ya - yb ))

(( dx == 0 || dy == 0 || dx == dy || dx == -dy )) && echo true || echo false
