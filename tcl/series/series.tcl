proc slices {series length} {
    if {$length < 1} {
        return -code error "slice length cannot be less than one"

    }

    set offset [string length $series]

    if {$offset == 0} {
        return -code error "series cannot be empty"

    }

    if {$length > $offset} {
        return -code error "slice length cannot be greater than series length"

    }

    set res {}

    for {set i 0; set j $length} {$j <= $offset} {incr i; incr j} {
        lappend res [string range $series $i $j-1]
    }

    return $res
}
