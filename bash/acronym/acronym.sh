#!/usr/bin/env bash


in="$*"

in=${in^^}
in=${in//-/ }
in=${in//[[:punct:]]/}

res=''

for w in $in; do
    res+="${w:0:1}"
done

echo "$res"

