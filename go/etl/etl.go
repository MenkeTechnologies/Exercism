package etl

import "strings"

func Transform(in map[int][]string) (out map[string]int) {
	out = make(map[string]int)

	for score, letters := range in {
		for _, letter := range letters {
			out[strings.ToLower(letter)] = score
		}
	}

	return out

}
