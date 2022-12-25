proc toroman {n} {
    set romans {1000  M 900 CM 500 D 400 CD 100 C 90 XC 50 L 40 XL 10 X 9 IX 5 V 4 IV 1 I}
    set res ""
    foreach {k v} $romans {
        append res [string repeat $v [expr $n / $k]]
        set n [expr $n % $k]
    }
    return $res
}
