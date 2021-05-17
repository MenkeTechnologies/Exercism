// This is a "stub" file.  It's a little start on your solution.
// It's not a complete solution though; you have to write some code.

// Package acronym should have a package comment that summarizes what it's about.
// https://golang.org/doc/effective_go.html#commentary
package acronym

import (
    "strings"
    "unicode"
)

func Split(r rune) bool {
    return r == ' ' || r == '-'
}

// Abbreviate should have a comment documenting it.
func Abbreviate(s string) string {
    s3 := ""
    for _, i := range strings.FieldsFunc(strings.ToUpper(s), Split) {

        l := []rune(i)
        for _, j := range l {

            if unicode.IsLetter(j) {
                s3 += string(j)
                break
            }
        }
    }
    return s3
}
