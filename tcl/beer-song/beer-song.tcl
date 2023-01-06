proc verse {n} {
	if {$n < 1} {
		return "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall."
	} 
    if {$n == 1} {
       return  "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall."
    }
    return "$n bottles of beer on the wall, $n bottles of beer.\nTake one down and pass it around, [expr $n - 1] bottle[expr {$n > 2 ? "s" : ""} ] of beer on the wall."
}

proc beerSong {start take} {
    set output [list]
    for {set i 0} {$i < $take} {incr i} {
        set current [expr $start - $i]
        lappend output [verse $current]
    }
    join $output \n
}
