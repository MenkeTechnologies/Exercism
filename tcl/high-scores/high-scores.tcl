#! tclsh

oo::class create HighScores {

    variable scores
    constructor {} {
        set scores [list ]
    }

    method addScores {args} {
        set scores [concat $scores $args]
    }

    method scores {} {
        return $scores
    }

    method latest {} {
        return [lindex $scores end]
    }

    method personalBest {} {

        return [lindex [lsort -integer $scores] end]

    }

    method topThree {} {

        return [lrange [lsort -integer -decreasing $scores] 0 2]
    }
}
