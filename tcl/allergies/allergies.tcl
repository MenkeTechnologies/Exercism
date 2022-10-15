variable allergies {eggs peanuts shellfish strawberries tomatoes chocolate pollen cats}

proc allergicTo {allergen score} {
    return [expr {$allergen in [listAllergies $score]}]
}

proc listAllergies {score} {
    variable allergies
    if {$score == 0} {return [list]}
    set res [list]
    for {set i 0} {$i < [llength $allergies]} {incr i} {
        if {($score & (1 << $i)) > 0} {lappend res [lindex $allergies $i]}
    }
    return $res
}
