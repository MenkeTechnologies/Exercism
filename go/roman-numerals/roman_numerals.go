package romannumerals

import (
	"errors"
	"strings"
)

type Roman struct {
	num int
	str string
}

var romanTable = []Roman{
	{1000, "M"},
	{900, "CM"},
	{500, "D"},
	{400, "CD"},
	{100, "C"},
	{90, "XC"},
	{50, "L"},
	{40, "XL"},
	{10, "X"},
	{9, "IX"},
	{5, "V"},
	{4, "IV"},
	{1, "I"},
}

func ToRomanNumeral(input int) (string, error) {
	if input < 1 || input > 3000 {
		return "", errors.New("invalid num")
	}
	var r string
	for _, pair := range romanTable {
		r += strings.Repeat(pair.str, input/pair.num)
		input %= pair.num
	}
	return r, nil
}
