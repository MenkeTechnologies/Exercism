package summultiples

func SumMultiples(limit int, factors ...int) int {
	sum := 0
	for n := 1; n < limit; n++ {
		for _, f := range factors {
			if f != 0 && n % f == 0 {
				sum += n
				break
			}
		}
	}
	return sum
}

