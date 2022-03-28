namespace eval triangle {
    proc is {type sides} {
        lassign [lsort -real $sides] a b c
        if {!($a > 0 && $b > 0 && $c > 0 && $a + $b > $c)} {
            return false
        }

        set nUniq [llength [lsort -real -unique $sides]]

        switch -exact -- $type {
            equilateral {return [expr $nUniq == 1]}
            isosceles   {return [expr $nUniq <= 2]}
            scalene     {return [expr $nUniq == 3]}
            default {error "invalid type"}
        }

    }
}
