#!/usr/bin/env bash

ord() {
    local val
    LC_CTYPE=C printf -v val %d "'$1"
    echo $(( val - 65 ))
}

chr () {
    local val
    printf -v val %x "$(( $1 + 65 ))"
    printf "\\x$val"
}

printRow () {
  local -i rowOffset=$1 size=$2 colOffset
  local line=''
  for (( colOffset = size; colOffset >= 0; --colOffset )); do
      if (( colOffset == rowOffset )); then
        line+=$(chr $rowOffset)
    else
        line+=' '
      fi
  done
  for (( colOffset = 1; colOffset <= size; ++colOffset )); do
      if (( colOffset == rowOffset )); then
        line+=$(chr $rowOffset)
    else
        line+=' '
      fi
  done
  echo "$line"
}

declare -i rowOffset size

(( $# == 1 )) || exit 1

size=$(ord $1)

for (( rowOffset = 0; rowOffset <= size; ++rowOffset )); do
    printRow $rowOffset $size
done
for (( rowOffset = size - 1; rowOffset >= 0; --rowOffset )); do
    printRow $rowOffset $size
done
