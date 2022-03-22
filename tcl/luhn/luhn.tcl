proc luhn {digits} {
    regsub -all {\s+} $digits {} digits

    if {[string length $digits] < 2 || [regexp {[^0-9]} $digits] } {
        return false
    }

    set tot 0
    set cnt 0

    foreach d [split [string reverse $digits] ""] {

        if {$cnt % 2 == 1} {
            set d [expr {$d * 2}]
        }
        set d [expr $d > 9 ? [expr $d - 9] : $d]
        incr tot $d
        incr cnt
    }

   expr {$tot % 10 == 0}
}

