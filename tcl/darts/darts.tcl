proc score {x y} {
    set d [expr pow(pow($x,2) + pow($y,2), 0.5)]

    if {$d <= 1} { return 10 }
    if {$d <= 5} { return 5 }
    if {$d <= 10} { return 1 }

    return 0
}
