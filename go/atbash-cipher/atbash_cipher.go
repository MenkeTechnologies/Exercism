package atbash

import (
	"bytes"
	"regexp"
	"strings"
)

var dict = map[rune]rune{}
var re = regexp.MustCompile(".{5}")

func init() {
	for i := 0; i <= int('z'-'a'); i++ {
		dict[rune('a'+i)] = rune('z' - i)
	}
	for i := '0'; i <= '9'; i++ {
		dict[i] = i
	}
}

func Atbash(plaintext string) string {
	builder := new(bytes.Buffer)
	for _, c := range strings.ToLower(plaintext) {
		if encoded, ok := dict[c]; ok {
			builder.WriteRune(encoded)
		}
	}
	return strings.TrimSpace(re.ReplaceAllString(builder.String(), "$0 "))
}
