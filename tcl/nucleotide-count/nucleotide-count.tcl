proc nucleotideCounts {strand} {
    set counts {A 0 C 0 G 0 T 0}
    foreach ch [split $strand ""] {
        if {[dict exists $counts $ch]} {
            dict incr counts $ch
        } else {
            error "Invalid nucleotide in strand"
        }
    }
    return $counts
}
