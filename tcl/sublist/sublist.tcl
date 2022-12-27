proc sublist {lst1 lst2} {
    set EQ "equal"
    set SUB "sublist"
    set SUPER "superlist"

    set len1 [llength $lst1]
    set len2 [llength $lst2]

    if {!$len1 && !$len2} {
        return $EQ
    } elseif {!$len1} {
        return $SUB
    } elseif {!$len2} {
        return $SUPER
    } elseif {$len1 > $len2} {
        if {[string first $lst2 $lst1] > -1} {
            return $SUPER
        }
    } elseif {$len1 < $len2} {
        if {[string first $lst1 $lst2] > -1} {
            return $SUB
        }
    }
    if {$lst1 eq $lst2} {
        return $EQ
    }
    return un$EQ
}
