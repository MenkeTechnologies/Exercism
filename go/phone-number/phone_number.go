package phonenumber

import (
	"errors"
	"fmt"
	"regexp"
)

var re, _ = regexp.Compile(`^\s*(?:\+?1?\s*)?\(?([2-9]\d{2})\)?[-.\s]*([2-9]\d{2})[-.\s]*(\d{4})\s*$`)

func GetMatches(s string) ([]string, error) {
	if !re.MatchString(s) {
		return nil, errors.New("bad num")
	}
	matches := re.FindStringSubmatch(s)
	return matches, nil
}
func Number(s string) (string, error) {
	matches, err := GetMatches(s)
	if err != nil {
		return "", err
	}
	s = matches[1] + matches[2] + matches[3]

	return s, nil
}
func AreaCode(s string) (string, error) {
	matches, err := GetMatches(s)
	if err != nil {
		return "", err
	}
	return matches[1], nil
}
func Format(s string) (string, error) {
	matches, err := GetMatches(s)
	if err != nil {
		return "", err
	}
	return fmt.Sprintf("(%s) %s-%s", matches[1], matches[2], matches[3]), nil
}
