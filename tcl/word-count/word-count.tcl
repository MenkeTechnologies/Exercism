proc countWords {sentence} {
    set counts [dict create]

    set sentence [string tolower $sentence]
    regsub -all {[^a-z'0-9]+} $sentence " " sentence
    set sentence [string trim $sentence]

    foreach word [split $sentence] {
        regsub {^'(.*)'$} $word {\1} word

        if {[dict exists $counts $word]} {
            set cnt [dict get $counts $word]
        } else {
            set cnt 0
        }
        dict set counts $word [expr $cnt + 1]
    }


    return $counts
}


