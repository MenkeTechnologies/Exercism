proc eggCount {number} {
    tcl::mathop::+ {*}[lsearch -all -inline [split [format %b $number] ""] 1]
}
