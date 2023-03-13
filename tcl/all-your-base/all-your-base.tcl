proc rebase {inputBase digits outputBase} {
    if {$inputBase < 2} {error "input base must be >= 2"}
    if {$outputBase < 2} {error "output base must be >= 2"}

    set sum 0

    foreach digit $digits {
        if {$digit < 0 || $digit >= $inputBase} {error "all digits must satisfy 0 <= d < input base"}
        set sum [expr {$sum * $inputBase + $digit}]
    }
    if {$sum == 0} {return {0}}
    set output {}
    while {$sum > 0} {
        set output [linsert $output 0 [expr $sum % $outputBase]]
        set sum [expr $sum / $outputBase]
    }
    return $output
}

