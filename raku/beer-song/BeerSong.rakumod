multi stanza ( $n where 3..* ) {
    sprintf "%d bottles of beer on the wall, %d bottles of beer.\nTake one down and pass it around, %d bottles of beer on the wall.", $n, $n, $n - 1
}
multi stanza ( 2 ) {
    "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall."
}
multi stanza ( 1 ) {
    "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall."
}
multi stanza ( 0 ) {
    "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall."
}
sub sing ( :$bottles, :$verses ) is export {
    gather for $bottles ...^ $bottles - $verses {
        take .&stanza
    }.join: "\n" x 2
}
