proc hammingDistance {left right} {
    set ll [string length $left]
    set rl [string length $right]

    if { $ll != $rl } {
        error "strands must be of equal length"

    }

    set hamming 0

    for {set i 0} {$i < $ll} {incr i} {
        if {[string index $left $i] != [string index $right $i]} {
            incr hamming
        }
    }

    return $hamming
}
