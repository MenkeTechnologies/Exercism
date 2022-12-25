proc bracketsMatch {s} {
    set brackets [dict create \{ \} \( \) \[ \] ]
    set stk {}
    foreach c [split $s ""] {
        if {$c in [dict keys $brackets]} {
            lappend stk $c
        } elseif {$c in [dict values $brackets]} {
            if { [llength $stk] == 0 ||
                $c ne [dict get $brackets [lpop stk]]
            } then {
                return false
            }
        }
    }
    expr [llength $stk] == 0
}

proc lpop {listname} {
    upvar 1 $listname lst
    set value [lindex $lst end]
    set lst [lrange $lst 0 end-1]
    return $value
}