#!/usr/bin/env gawk -f
#
BEGIN {
    FS = ""
    dict["]"] = "["
    dict[")"] = "("
    dict["}"] = "{"
}

{
    for (i = 1; i <= NF; ++i) {
        if ($i ~ /[({[]/) {
            stack[size++] = $i
        } else if ($i ~ /[])}]/) {
            if (stack[size - 1] == dict[$i]) {
                del stack[--size]
            } else {
                print "false"
                exit
            }
        }
    }
    print !size ? "true" : "false"
}
