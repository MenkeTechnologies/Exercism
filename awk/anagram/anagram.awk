#!/usr/bin/env gawk -f
function sort(cand, chars, r) {
    split(tolower(cand), chars, //)
    for (i in chars) r = r chars[i]
    return r
}

BEGIN {
    PROCINFO["sorted_in"] = "@val_str_asc"
    target_sorted = sort(key)
    target_lc = tolower(key)
}

target_lc != tolower($1) && target_sorted == sort($1)
