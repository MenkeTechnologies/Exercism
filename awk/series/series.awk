#!/usr/bin/env gawk -f

@include "assert"
{
    assert(NF, "series cannot be empty")
    assert(len > 0 && len <= length(), "invalid length")
    n = $0
    while (i++ <= length(n) - len)
        $i = substr(n, i, len)
    print
}

