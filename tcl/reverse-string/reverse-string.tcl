proc reverse {s} {
    join [lreverse [split $s ""]] ""
}
