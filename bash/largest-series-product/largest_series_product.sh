#!/usr/bin/env bash
str="$1"
str_len="${#str}"
substr_len="$2"
max=$((str_len - substr_len))
max_product=0

if ((str_len < substr_len)); then
  echo "span must be smaller than string length" >&2
  exit 1
fi
if [[ ! "$str" =~ ^[0-9]*$ ]]; then
  echo "input must only contain digits" >&2
  exit 1
fi
if ((substr_len < 0)); then
  echo "span must not be negative" >&2
  exit 1
fi
for ((i = 0; i <= max; ++i)); do
  substr="${str:i:substr_len}"
  product=1
  digits=($(grep -oP '\d' <<<"$substr"))
  for digit in "${digits[@]}"; do
    ((product *= digit))
  done
  if ((product > max_product)); then
    max_product="$product"
  fi
done

echo "$max_product"
