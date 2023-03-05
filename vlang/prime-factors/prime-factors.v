module main

fn prime_factors(n i64) []i64 {
	mut dup := n
	mut factors := []i64{}
	for candidate := i64(2); dup > 1; candidate++ {
		for ; dup % candidate == 0; dup /= candidate {
			factors << candidate
		}
	}
	return factors
}

