package luhn

func Valid(input string) bool {
	var n, digit, sum int
	for i := len(input) - 1; i >= 0; i-- {
		r := input[i]
		switch {
		case r == ' ':
			continue
		case r >= '0' && r <= '9':
			n++
			digit = int(r - '0')
			if n%2 == 0 {
				digit *= 2
			}
			if digit > 9 {
				digit -= 9
			}
			sum += digit
		default:
			return false
		}
	}
	return n > 1 && sum%10 == 0
}
