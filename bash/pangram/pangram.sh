#!/usr/bin/env bash

res=$(echo "$1" | perl -nE '$_=lc;s@[^[:alpha:]]@@g;say for split //' | sort | uniq | perl -pe 's@\n@@')


[[ $res == abcdefghijklmnopqrstuvwxyz ]] && echo true || echo false
