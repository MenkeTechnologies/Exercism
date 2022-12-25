proc verse {n} {
	if {$n < 1} {
		return "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall."
	} elseif {$n == 1} {
       return  "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall."
	} else {
       if {$n > 2} { set plural "s" } else { set plural "" }
       return "$n bottles of beer on the wall, $n bottles of beer.\nTake one down and pass it around, [expr $n - 1] bottle$plural of beer on the wall."
    }
}

proc beerSong {start take} {
    set output [list]
    for {set i 0} {$i < $take} {incr i} {
        set current [expr $start - $i]
        lappend output [verse $current]
    }
    join $output \n
}
