proc aliquotSum {n} {
    set sum 1
    for {set i 2} {[expr $i * $i ] < $n} {incr i} {
        if {$n % $i == 0} {
            incr sum $i
            incr sum [expr $n / $i]
        }
    }
    return $sum
}
proc classify {n} {
    if {![string is integer -strict $n] || $n < 1} {
        error "Classification is only possible for natural numbers."
    }
    if {$n == 1} {return deficient}
    set sum [aliquotSum $n]
    if {$sum == $n} { return perfect }
    if {$sum > $n} { return abundant }
    if {$sum < $n} { return deficient }
}
