namespace eval dnd {

    namespace export character ability modifier
    namespace ensemble create

    proc modifier {score} {
        expr {($score - 10) / 2}
    }
    proc roll {} {
        expr {1 + int(rand() * 6)}
    }
    proc ability {} {
        set rolls [list [roll] [roll] [roll] [roll]]
        set sorted [lsort -integer $rolls]
        ::tcl::mathop::+ {*}[lrange $sorted 1 end]
    }
    proc character {} {
        set c [dict create]
        foreach stat {charisma constitution dexterity intelligence strength wisdom} {
            dict set c $stat [ability]
        }
        dict set c hitpoints [expr {10 + [modifier [dict get $c constitution]]}]
        expr {$c}
    }
}
