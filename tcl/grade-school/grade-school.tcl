oo::class create School {
    variable studentBody
    constructor {} {
        my reset
    }
    method reset {} {
        set studentBody {}
    }
    method add {students} {
        lmap student $students {
            lassign $student name grade
            if {[dict exists $studentBody $name]} {
                string cat "false"
            } else {
                dict set studentBody $name $grade
                string cat "true"
            }
        }
    }
    method roster {} {
        set sorted [lsort -stride 2 -index 1 -integer [
                    lsort -stride 2 -index 0 $studentBody]
                   ]
        dict keys $sorted
    }
    method grade {gr} {
        set class [dict filter $studentBody value $gr]
        lsort [dict keys $class]
    }
}

School create school