package require Tcl 9.0

proc truncate {s} {
    string range $s 0 4
}
