proc isArmstrongNumber {number} {
    set len [string length $number]
    set sum 0
    foreach ch [split $number ""] {
        incr sum [expr {$ch ** $len}]
    }
    expr $sum == $number
}
