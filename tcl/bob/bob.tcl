proc heyBob {s} {
    set nows [string trim $s]
    if {$nows eq ""} { return "Fine. Be that way!" }
    set q [string match {*\?} $nows]
    if {[regexp {[[:upper:]]} $nows] && ![regexp {[[:lower:]]} $nows]} {
        if {$q} { return "Calm down, I know what I'm doing!" }
        return "Whoa, chill out!"
    }
    if {$q} { return "Sure." }
    return "Whatever."
}
