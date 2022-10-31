#!/usr/bin/env gawk -f

BEGIN {
	if (typeof(start) == "untyped" && typeof(stop) == "untyped") {
		start = verse
		stop = verse
	}
	for (v = start; v >= stop; --v) {
		if (v > 2) {
			plural = "s"
		} else {
			plural = ""
		}
		if (v > 1) {
			printf "%s bottles of beer on the wall, %s bottles of beer.\nTake one down and pass it around, %s bottle%s of beer on the wall.\n", v, v, v - 1, plural
		} else if (v == 1) {
			printf "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
		} else {
			printf "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
		}
	}
}

