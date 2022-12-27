proc rotate {s amt} {
    set alphabet {a b c d e f g h i j k l m n o p q r s t u v w x y z}
    set shifted [list {*}[lrange $alphabet $amt end] {*}[lrange $alphabet 0 $amt-1]]
    foreach c $alphabet tr $shifted {
        lappend map $c $tr [string toupper $c] [string toupper $tr]
    }
    string map $map $s
}