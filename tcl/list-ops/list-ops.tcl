namespace eval listOps {
    proc append {listname values} {
        upvar $listname llist
        lappend llist {*}$values
    }
    proc concat {listOfLists} {
        set ret {}
        foreach l $listOfLists {
            append ret $l
        }
        return $ret
    }
    proc filter {lst f} {
        lmap n $lst {expr {[apply $f $n] ? $n : [continue]}}
    }
    proc length {lst} {
        llength $lst
    }
    proc map {lst f} {
        lmap n $lst {apply $f $n}
    }
    proc foldl {lst acc f} {
        foreach n $lst { 
            set acc [apply $f $acc $n]
        }
        return $acc
    }
    proc foldr {lst acc f} {
        foreach n [reverse $lst] { 
            set acc [apply $f $n $acc]
        }
        return $acc
    }
    proc reverse {lst} {
        set ret {}
        for {set i [expr {[llength $lst] - 1}]} {$i >= 0} {incr i -1} {
            lappend ret [lindex $lst $i]
        }
        return $ret
    }
}
