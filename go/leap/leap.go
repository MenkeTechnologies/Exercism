package leap

func IsLeapYear(y int) bool {
	return y%4 == 0 && y%100 != 0 || y%400 == 0
}
