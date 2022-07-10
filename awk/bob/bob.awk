#!/usr/bin/env gawk -f


BEGIN {
    RS = "^$"
}

END {
    gsub(/[[:space:]]/, "")
    if ($0 == "")
        print "Fine. Be that way!"
    else {
        asking  = /\?$/
        if (/[A-Z]/ && !/[a-z]/) {
            if (asking) print "Calm down, I know what I'm doing!"
            else print "Whoa, chill out!"
        } else {
            if (asking) print "Sure."
            else print "Whatever."
        }
    }
}

