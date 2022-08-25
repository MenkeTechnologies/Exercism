package prime

func Factors(n int64) (factors []int64) {
	var divisor int64 = 2
	factors = make([]int64, 0)
	for n > 1 {
		if n%divisor == 0 {
			factors = append(factors, divisor)
			n /= divisor
		} else {
			divisor++
		}
	}
	return
}
