module main
fn sieve(limit int) []int {
	mut primes := []int{len: limit - 1, init: it + 2}
	for i, n in primes {
		if n != 0 {
			mut j := i + n
			for j < limit - 1 {
				primes[j] = 0
				j += n
			}
		}
	}
	return primes.filter(it > 0)
}

