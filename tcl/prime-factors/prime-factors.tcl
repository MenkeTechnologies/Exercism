proc factors {n} {

    set facs {}
    set divisor 2

    while {$n > 1} {

        while {$n % $divisor == 0} {
            lappend facs $divisor
            set n [expr $n / $divisor]
        }
        incr divisor
    }

    return $facs

}