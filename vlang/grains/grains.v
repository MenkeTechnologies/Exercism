module main
import math

fn grains_on_square(square i64) !i64 {
	if square < 1 || square > 64 {
		return error('square must be between 1 and 64')
	}
	return math.powi(2, square - 1)
}

fn total_grains_on_board() i64 {
	mut result := i64(0)
	for i in 1 .. 65 {
		result += grains_on_square(i) or { return 0 }
	}
	return result
}
