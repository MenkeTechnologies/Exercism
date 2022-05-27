proc accumulate {varname values body} {
    upvar 1 $varname e
    set r []
    foreach e $values {
        lappend r [uplevel 1 $body]
    }

    return $r
}
