  
proc keep {varname list condition {keep 1}} {
    set l {}
    foreach $varname $list {
        eval "set v $$varname"
        if {[eval $condition]} {
            if {$keep} {
                lappend l $v
            }
        } else {
            if {!$keep} {
                lappend l $v
            }
        }

    }
    return $l
}

proc discard {varname list condition} {
    keep $varname $list $condition 0
}
