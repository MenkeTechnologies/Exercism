proc eggCount {number} {
    tcl::mathop::+ {*}[split [format %b $number] ""]
}
