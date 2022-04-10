proc sumOfMultiples {factors limit} {
    set sum 0
    for {set i 1} {$i < $limit} {incr i} {
        foreach f $factors {
            if {$f > 0 && $i % $f == 0} {
                incr sum $i
                break
            }
        }
    }

    return $sum
}
