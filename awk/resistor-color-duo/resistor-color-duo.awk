#!/usr/bin/env gawk -f

@include "assert"

BEGIN {
    color["black"] = 0
    color["brown"] = 1
    color["red"] = 2
    color["orange"] = 3
    color["yellow"] = 4
    color["green"] = 5
    color["blue"] = 6
    color["violet"] = 7
    color["grey"] = 8
    color["white"] = 9
}
{
    used = 0
    for(i = 1; i <= NF; ++i) {
        assert($i in color, "invalid color")
        if (used > 1) break
        num = num * 10 + color[$i]
        ++used
    }
    print(num)
}

