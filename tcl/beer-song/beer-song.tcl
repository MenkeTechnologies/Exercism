proc verse {n} {
    expr {$n < 1 ?
    "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall."
    : $n == 1 ?  "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall."
    : "$n bottles of beer on the wall, $n bottles of beer.\nTake one down and pass it around, [expr $n - 1] bottle[expr {$n > 2 ? "s" : ""} ] of beer on the wall." }
}

proc beerSong {start take} {
    set output {}
    set ending [expr $start - $take]
    for {set i $start} {$i > $ending} {incr i -1} {
        lappend output [verse $i]
    }
    join $output \n
}
