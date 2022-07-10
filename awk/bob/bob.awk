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
            print asking ? "Calm down, I know what I'm doing!" : "Whoa, chill out!"
        } else {
            print asking ? "Sure." : "Whatever."
        }
    }
}

