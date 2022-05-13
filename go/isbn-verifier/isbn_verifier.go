package isbn

import (
	"regexp"
	"strings"
	"unicode"
)

var re = regexp.MustCompile(`^\d-?\d{3}-?\d{5}-?[\dX]$`)

func reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}

func IsValidISBN(isbn string) bool {

	if !re.MatchString(isbn) {
		return false
	}

	isbn = strings.ReplaceAll(reverse(isbn), "-", "")

	sum := 0
	for i, c := range isbn {
		switch {
		case unicode.IsDigit(c):
			sum += int(c-'0') * (i + 1)
		case c == 'X':
			sum += 10
		}
	}

	return sum%11 == 0

}
