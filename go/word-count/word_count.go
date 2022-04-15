package wordcount

import (
	"strings"
	"unicode"
)

type Frequency map[string]int

func WordCount(s string) (dict Frequency) {

	dict = Frequency{}

	words := strings.FieldsFunc(s, func(r rune) bool {
		return !unicode.IsLetter(r) && !unicode.IsDigit(r) && r != '\''
	})

	for _, w := range words {
		w = strings.Trim(strings.ToLower(w), "'")
		if _, ok := dict[w]; !ok {
			dict[w] = 1
		} else {
			dict[w]++
		}
	}

	return

}
