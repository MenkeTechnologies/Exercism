oo::class create Robot {
    variable position
    constructor {{initialPos {}}} {
        set position [dict merge {x 0 y 0 direction north} $initialPos]
        dict with position {
            if {$direction ni "north east south west"} {error "invalid direction"}
            if {![string is integer $x]} {error "invalid x coordinate"}
            if {![string is integer $y]} {error "invalid y coordinate"}
        }
    }
    method position {} {
        return $position
    }
    method move {instructions} {
        set directions {
            north {R east L west}
            east {R south L north}
            south {R west L east}
            west {R north L south}
        }
        set advances {
            north {x 0 y 1}
            east {x 1 y 0}
            south {x 0 y -1}
            west {x -1 y 0}
        }
        foreach instruction [split $instructions ""] {
            switch $instruction {
                R - L {
                    dict with position {
                        set direction [dict get $directions $direction $instruction]
                    }
                }
                A {
                    set advance [dict get $advances [dict get $position direction]]
                    dict with position {
                        incr x [dict get $advance x]
                        incr y [dict get $advance y]
                    }
                }
                default {error "invalid instruction: $instruction"}
            }
        }
    }
}
