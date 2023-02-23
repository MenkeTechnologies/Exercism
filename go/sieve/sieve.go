package sieve

func Sieve(limit int) (primes []int) {
	bools := make([]bool, limit+1)
	for i := 2; i <= limit; i++ {
		if !bools[i] {
			primes = append(primes, i)
			for j := i * 2; j <= limit; j = j + i {
				bools[j] = true
			}
		}
	}
	return primes
}
