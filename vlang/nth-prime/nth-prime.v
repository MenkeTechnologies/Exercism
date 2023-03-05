module main

fn is_prime(target int, primes []int) bool {
	for p in primes {
		if target % p == 0 {
			return false
		}
	}
	return true
}

fn nth_prime(n int) !int {
	if n < 1 {
		return error('n must be greater than 0')
	}
	mut primes := [2]
	mut curr := 3
	for n > primes.len {
		if is_prime(curr, primes) {
			primes << curr
		}
		curr += 2
	}
	return primes[n - 1]
}
