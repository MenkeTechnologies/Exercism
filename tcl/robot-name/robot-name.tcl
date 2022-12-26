set names [dict create]
proc resetRobotNames {} {
    global names
    set names [dict create]
}
oo::class create Robot {
    variable name
    constructor {} {
        my reset
    }
    method name {} {
        return $name
    }
    method reset {} {
        global names
        set name [my generateName]
        while {[dict exists $names $name]} {
            set name [my generateName]
        }
        dict set names $name true
    }
    method generateName {} {
        set number [format %03i [expr {int(rand() * 1000)}]]
        set c1 [expr {int(rand() * 26) + 65}]
        set c2 [expr {int(rand() * 26) + 65}]
        set letters [format %c%c $c1 $c2]
        return "$letters$number"
    }
}
