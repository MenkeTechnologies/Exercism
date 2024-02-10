proc isValid {isbn} {
    if {![regexp {^\d-?\d{3}-?\d{5}-?[\dX]$} $isbn]} {
        return false
    }
    set sum 0
    set i 0
    foreach c [split [regsub -all {[- ]+} [string reverse $isbn] ""] ""] {
        if {[string is digit $c]} {
            incr sum [expr {$c * ($i + 1)}]
        } elseif {$c eq "X"} {
            incr sum 10
        } else {
            return false
        }
        incr i
    }
    expr {$sum % 11 == 0}
}

