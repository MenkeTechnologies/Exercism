proc largestSeriesProduct {digits span} {
    require {$span <= [string length $digits]} "span must be smaller than string length"
    require {![regexp {\D} $digits]} "digits input must only contain digits"
    require {$span >= 0} "span must not be negative"
    set maxProd -Inf
    set endIdx [expr {[string length $digits] - $span}]
    for {set i 0; set j $span} {$i <= $endIdx} {incr i; incr j} {
        set series [split [string range $digits $i $j-1] ""]
        set product [::tcl::mathop::* {*}$series]
        set maxProd [expr {max($maxProd, $product)}]
    }
    return $maxProd
}
proc require {condition errMsg} {
    if {![uplevel 1 [list expr $condition]]} {
        error $errMsg
    }
}

