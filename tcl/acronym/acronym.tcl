proc abbreviate {phrase} {
    set phrase [string map {- \  _ {}} $phrase]

    set res ""

    foreach x [split $phrase] {
        append res [string index $x 0]
    }

    return [string toupper $res]
}
