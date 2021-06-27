proc matrixFrom {inputString} {
    return [lmap r [split $inputString "\n"] {split $r " "}]
}

proc row {matrix n} {
    return [lindex $matrix $n-1]
}

proc column {matrix n} {
    return [lmap r $matrix {row $r $n}]

}
