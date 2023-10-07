proc primes {limit} {
    for {set i 2} {$i <= $limit} {incr i} { set lst($i) 1 }
    for {set n 2} {$n <= $limit} {incr n} {
        if {!$lst($n)} { continue }
        for {set k [expr {$n * 2}]} {$k <= $limit} {incr k $n} { set lst($k) 0 }
    }
    set results {}
    foreach {n ok} [array get lst] {
        if $ok {
            lappend results $n
        }
    }
    lsort -integer $results
}

