namespace eval ::resistorColor {

    set codes {
        black   0
        brown   1
        red     2
        orange  3
        yellow  4
        green   5
        blue    6
        violet  7
        grey    8
        white   9
    }

    proc colorCode {colour} {
        try {
            return [dict get $resistorColor::codes $colour]
        } on error {err opts} {
            error "Invalid color: $colour"
        }
    }

    proc value {args} {
        set res {}
        foreach color [lrange $args 0 1] {
            lappend res [colorCode $color]
        }

        return [scan [join $res ""] %d]
    }
}
