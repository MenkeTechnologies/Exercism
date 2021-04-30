// This is a "stub" file.  It's a little start on your solution.
// It's not a complete solution though; you have to write some code.

// Package bob should have a package comment that summarizes what it's about.
// https://golang.org/doc/effective_go.html#commentary
package bob

import (
	"regexp"
	"strings"
)

// Hey should have a comment documenting it.
func Hey(remark string) string {

	remark = strings.TrimSpace(remark)
	silence := remark == ""
	question := strings.HasSuffix(remark, "?")

	compiled := regexp.MustCompile("[A-Za-z]+")
	alpha := compiled.Match([]byte(remark))

	uppercase := alpha && strings.ToUpper(remark) == remark

	if silence {
		return "Fine. Be that way!"
	} else if uppercase && question {

		return "Calm down, I know what I'm doing!"
	} else if uppercase {
		return "Whoa, chill out!"
	} else if question {
		return "Sure."

	}

	return "Whatever."
}
