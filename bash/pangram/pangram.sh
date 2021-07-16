#!/usr/bin/env bash

res=$(echo "$1" | perl -ne '$_=lc;$_=~s@[^[:alpha:]]@@g;print "$_\n" for split //' | sort | uniq | perl -pe 's@\n@@')


[[ $res == abcdefghijklmnopqrstuvwxyz ]] && echo true || echo false
