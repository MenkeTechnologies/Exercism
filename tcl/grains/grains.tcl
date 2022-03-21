namespace eval grains {

    namespace export square total
    namespace ensemble create

    proc square {square} {
        if {$square < 1 || $square > 64} {
            throw 1 "square must be between 1 and 64"
        }
        expr 2 ** ($square - 1)
    }

    proc total {} {
        expr 2 ** 64 - 1
    }

}
