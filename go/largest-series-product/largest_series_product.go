package lsproduct

import "errors"

func LargestSeriesProduct(digits string, span int) (int64, error) {
	if span < 0 {
		return 0, errors.New("span must not be negative")
	}
	if len(digits) < span {
		return 0, errors.New("span must be smaller than string length")
	}
	var digitArray []int64
	for i := 0; i < len(digits); i++ {
		if digits[i] < '0' || digits[i] > '9' {
			return 0, errors.New("digits input must only contain digits")
		}
		digitArray = append(digitArray, int64(digits[i]-'0'))
	}
	var largestProduct int64
	for i := 0; i+span <= len(digitArray); i++ {
		currentProduct := int64(1)
		for _, j := range digitArray[i : i+span] {
			currentProduct *= j
		}
		if currentProduct > largestProduct {
			largestProduct = currentProduct
		}
	}
	return largestProduct, nil
}
