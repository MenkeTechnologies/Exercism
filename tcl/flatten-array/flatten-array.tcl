proc flatten {input} {
    set prev $input
    while { 1 } {
        set flatLevel [concat {*}$prev]
        if { $flatLevel eq $prev } { break }
        set prev $flatLevel
    }
    return $flatLevel
}

