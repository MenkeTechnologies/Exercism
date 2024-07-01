module main

fn sum(factors []int, limit int) int {
	mut res := 0
	for n in 1 .. limit {
		for factor in factors {
			if factor != 0 && n % factor == 0 {
				res += n
				break
			}
		}
	}
	return res
}
