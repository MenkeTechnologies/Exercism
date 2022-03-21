#!/usr/bin/env tclsh

proc isPangram {text} {
    set lc [string tolower $text]

    foreach letter {z j q x k v b p g w y f m c u l d h r s n i o a t e} {
        if {[string first $letter $lc] == -1} { return 0 }
    }

    return 1
}
