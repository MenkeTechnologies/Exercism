proc findAnagrams {subject candidates} {
    set lc [string tolower $subject]
    set sorted [lsort [split $lc ""]]

    set r [list]

    foreach c $candidates {
        if {[lsort [split [string tolower $c] ""]] eq $sorted && $lc ne [string tolower $c]} {
            lappend r $c
        }
    }

    return $r
}
