oo::class create Clock {
    variable mins
    constructor {h m} {
        set mins [expr {$h * 60 + $m}]
    }
    method toString {} {
        set mins [expr {$mins % (24 * 60)}]
        set h [expr {$mins / 60}]
        set m [expr {$mins % 60}]
        return [format {%02d:%02d} $h $m]
    }
    method add {minutes} {
        incr mins $minutes
        return [self]
    }
    method subtract {minutes} {
        my add [expr {-1 * $minutes}]
    }
    method equals {other} {
        expr {[my toString] eq [$other toString]}
    }
    forward "==" my equals
    export  "=="
}
