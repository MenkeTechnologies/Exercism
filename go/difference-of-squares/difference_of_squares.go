package diffsquares

import "math"

func SquareOfSum(n int) int {
	var s = 0

	for i := 1; i <= n; i++ {

		s += i

	}

	return s * s

}

func Difference(n int) int {

	return SquareOfSum(n) - SumOfSquares(n)

}

func SumOfSquares(n int) int {

	var s2 = 0.0

	for i := 1; i <= n; i++ {

		s2 += math.Pow(float64(i), 2)

	}

	return int(s2)
}
