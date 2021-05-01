package hamming

import "errors"

func Distance(a, b string) (int, error) {

	var diff = 0
	var runeA = []rune(a)
	var runeB = []rune(b)

	if len(runeA) != len(runeB) {
		return diff, errors.New("len 0")
	}

	for i := range runeA {
		if runeA[i] != runeB[i] {
			diff++
		}
	}

	return diff, nil

}
