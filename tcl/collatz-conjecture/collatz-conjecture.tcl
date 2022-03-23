proc steps {n} {
    if {$n < 1} {
        error "Only positive integers are allowed"
    }

    set cnt 0

    while {$n > 1} {
        if {$n % 2 == 0} {
            set n [expr $n / 2]
        } else {
            set n [expr 3 * $n + 1]
        }

        incr cnt
    }

    return $cnt
}
