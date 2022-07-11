#!/usr/bin/env gawk -f

BEGIN { PROCINFO["sorted_in"] = "@val_num_desc" }

isnumber($1) { scores[++cnt] = $1 }

$1 == "list" { for (i = 1; i <= cnt; ++i) print scores[i] }
$1 == "latest" { print scores[cnt] }
$1 == "personalBest" { print_top(1) }
$1 == "personalTopThree" { print_top(3) }

function isnumber(str) {
    return str ~ /^[+-]?[[:digit:]]+$/
}

function print_top(n) {
    count = 0
    for (i in scores) {
        print scores[i]
        if (++count == n) break
    }
}

