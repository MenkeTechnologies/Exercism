proc prime {list n} {
    for {set i 0} {$i < [llength $list]} {incr i} {
        if {$n % [lindex $list $i] == 0} {
            return false
        }
    }
    return true
}
proc nthPrime {n} {
    if {$n < 1} { error "there is no zeroth prime" }
    set primes {2}
    set curr 3
    while {$n > [llength $primes]} {
        if {[prime $primes $curr]} {
            lappend primes $curr
        }
        incr curr 2
    }
    lindex $primes $n-1
}
