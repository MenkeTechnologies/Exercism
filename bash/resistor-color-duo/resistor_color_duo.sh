#!/usr/bin/env bash

declare -A map
map[black]=0
map[brown]=1
map[red]=2
map[orange]=3
map[yellow]=4
map[green]=5
map[blue]=6
map[violet]=7
map[grey]=8
map[white]=9

err='invalid color'

str="${map[$1]:?$err}${map[$2]:?$err}"

echo "${str##0}"
