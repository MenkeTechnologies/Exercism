proc addGigasecond {datetime} {
    set fmt {%Y-%m-%dT%H:%M:%S}
    set sec [clock scan $datetime -timezone :UTC]
    set gs [expr int(pow(10,9))]
    return [clock format [expr $sec + $gs] -format $fmt -timezone :UTC]
}
