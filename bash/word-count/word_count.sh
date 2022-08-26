#!/usr/bin/env bash

echo -e "$*" |
perl -0E '$_=lc<>;s@(?!\w|'"'"'(t|re)\b).@ @g;++$h{$_}for split;@k=sort{$h{$b}<=>$h{$a}}keys%h;say"$_: ".$h{$_}for@k'
