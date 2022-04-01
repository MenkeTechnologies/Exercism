package pangram

import "strings"

func IsPangram(s string) bool {
	s = strings.ToLower(s)

	for c := 'a'; c <= 'z'; c++ {
		if strings.IndexRune(s, c) == -1 {
			return false
		}
	}
	return true
}
