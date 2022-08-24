package armstrong

import (
	"math"
	"strconv"
)

func IsNumber(n int) bool {
	sum := 0.0
	digits := strconv.Itoa(n)
	size := float64(len(digits))
	for _, digit := range digits {
		sum += math.Pow(float64(digit-'0'), size)
	}
	return float64(n) == sum
}
