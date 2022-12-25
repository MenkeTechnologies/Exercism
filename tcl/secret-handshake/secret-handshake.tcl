proc secretHandshake {code} {
    set dict {1 wink 2 "double blink" 4 "close your eyes" 8 jump}
    set output {}

    foreach {k v} $dict {
        if {$code & $k} {
            lappend output $v
        }
    }
    if {$code & 16} { lreverse $output } else { return $output }
}
