package phonenumber

import (
	"errors"
	"fmt"
	"regexp"
)

func Number(s string) (string, error) {
	re := regexp.MustCompile(`[^\d]`)
	s = re.ReplaceAllString(s, "")
	if match, _ := regexp.MatchString(`^1?[2-9][\d]{2}[2-9][\d]{6}$`, s); !match {
		return "", errors.New("Poop!")
	}
	if len(s) == 11 {
		return s[1:], nil
	}
	return s, nil
}
func AreaCode(s string) (string, error) {
	n, err := Number(s)
	if err != nil {
		return "", err
	}
	return n[:3], nil
}
func Format(s string) (string, error) {
	n, err := Number(s)
	if err != nil {
		return "", err
	}
	return fmt.Sprintf("(%s) %s-%s", n[:3], n[3:6], n[6:]), nil
}
