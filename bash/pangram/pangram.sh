#!/usr/bin/env bash

res=$(echo "$1" | perl -MList::Util=uniq -nE '$_=lc;s@[^[:alpha:]]@@g;print for uniq sort split //')


[[ $res == abcdefghijklmnopqrstuvwxyz ]] && echo true || echo false
