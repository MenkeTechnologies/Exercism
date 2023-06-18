module main

import math { pow }

pub fn score(x f64, y f64) int {
	dist := pow(pow(x, 2) + pow(y, 2), 0.5)
	if dist > 10 {
		return 0
	} else if dist > 5 {
		return 1
	} else if dist > 1 {
		return 5
	}
	return 10
}

