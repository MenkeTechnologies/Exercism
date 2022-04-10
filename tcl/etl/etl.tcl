proc transform {raw} {

    try {
        set input [dict create {*}$raw]
    } on error {} {
        error "invalid input"
    }

    set r {}
    dict for {value letters} $input {
        foreach letter $letters {
            dict set r [string tolower $letter] $value
        }
    }

    return $r
}
