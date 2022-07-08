#!/usr/bin/env gawk -f
function abs(val) {
    return (val > 0) ? val : -val
}

{
    for (i = 1; i <= NF; i++)
        if ($i < 0 || $i > 7) {
            print "invalid position: row or column is not on the board"
            exit 1
        }

    dx = abs($3 - $1)
    dy = abs($4 - $2)

    if (dx == 0 && dy == 0) {
        print "invalid position: pieces are on the same tile"
        exit 1
    }

    if (dx == 0 || dy == 0 || dx == dy)
        print "true"
    else
        print "false"
}
