namespace eval resistorColor {

    proc colorCode {args} {

        set index [lsearch -exact [colors] $args]

        if {$index == -1} {
            error "Invalid color: $args"
        }
        return $index

    }

    proc colors {} {
        list black brown red orange yellow green blue violet grey white
    }
}
