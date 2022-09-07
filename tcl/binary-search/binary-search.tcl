proc binarySearch {lst search} {
    set hi [expr {[llength $lst] - 1}]
    set lo 0

    while { $lo <= $hi } {
        set mid [expr {($lo + $hi) / 2}]
        set elem [lindex $lst $mid]

        if {$elem == $search} {
            return $mid
        } elseif {$search < $elem} {
            set hi [expr {$mid - 1}]
        } else {
            set lo [expr {$mid + 1}]
        }
    }
    return -1
}

