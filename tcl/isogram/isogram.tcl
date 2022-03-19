proc isIsogram {input} {
    set d {}
    set letters [regexp -inline -all {[a-z]} [string tolower $input]]
    foreach l $letters {
        dict incr d $l
        if {[dict get $d $l] > 1} {
            return false
        }
    }

    return true

}
