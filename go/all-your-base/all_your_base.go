package allyourbase

import "errors"

func ConvertToBase(inputBase int, inputDigits []int, outputBase int) (outputDigits []int, err error) {
	switch {
	case inputBase < 2:
		return nil, errors.New("input base must be >= 2")
	case outputBase < 2:
		return nil, errors.New("output base must be >= 2")
	}
	acc := 0
	for _, digit := range inputDigits {
		if digit < 0 || digit >= inputBase {
			return nil, errors.New("all digits must satisfy 0 <= d < input base")
		}
		acc = acc*inputBase + digit
	}
	if acc == 0 {
		outputDigits = []int{0}
		return
	}
	for acc > 0 {
		outputDigits = append([]int{acc % outputBase}, outputDigits...)
		acc /= outputBase
	}
	return
}
