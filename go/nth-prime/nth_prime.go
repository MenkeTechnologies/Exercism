package prime

import "errors"

func Nth(n int) (int, error) {
	if n < 1 {
		return 0, errors.New("input must be greater than or equal to 1")
	}
	primes := []int{2}
	numberToCheck := 3
	for len(primes) < n {
		isPrime := true
		for _, prime := range primes {
			if numberToCheck%prime == 0 {
				isPrime = false
				numberToCheck += 2
				break
			}
		}
		if isPrime {
			primes = append(primes, numberToCheck)
			numberToCheck += 2
		}
	}
	return primes[n-1], nil
}
