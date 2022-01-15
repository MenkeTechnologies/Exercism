proc raindrops {n} {
    set r ""

    if {$n % 3 == 0} { append r "Pling" }
    if {$n % 5 == 0} { append r "Plang" }
    if {$n % 7 == 0} { append r "Plong" }

    if {$r == ""} {
        append r "$n"
    }
    return $r
}
