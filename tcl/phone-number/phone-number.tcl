proc clean {in} {
    set num [regsub -all {[+()\s.-]} $in ""]
    if {[string length $num] > 11} { error "more than 11 digits" }
    if {[string length $num] < 10} { error "incorrect number of digits" }
    if [regexp -nocase {[a-z]} $num] { error "letters not permitted" }
    if [regexp {[^[:digit:]]} $num] { error "punctuations not permitted" }
    if {[string length $num] == 11} {
        if {![string match {1*} $num]} { error "11 digits must start with 1" }
        set num [string range $num 1 end]
    }
    if {[string match {0*} $num]} { error "area code cannot start with zero" }
    if {[string match {1*} $num]} { error "area code cannot start with one" }
    if {[string match {???0*} $num]} { error "exchange code cannot start with zero" }
    if {[string match {???1*} $num]} { error "exchange code cannot start with one" }
    return $num
}

