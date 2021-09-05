package darts

import "math"

func Score(x float64, y float64) int {

	dist := math.Pow(math.Pow(x, 2)+math.Pow(y, 2), 0.5)

	if dist <= 1 {
		return 10
	}

	if dist <= 5 {
		return 5
	}

	if dist <= 10 {
		return 1
	}
	return 0

}
