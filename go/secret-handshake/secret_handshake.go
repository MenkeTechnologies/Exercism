package secret

import "math"

var values = []string{"wink", "double blink", "close your eyes", "jump"}

func Handshake(code uint) (lst []string) {
	lst = make([]string, 0)
	for i := 0; i < len(values); i++ {
		if code&uint(math.Pow(2, float64(i))) > 0 {
			lst = append(lst, values[i])
		}
	}
	if code&16 > 0 {
		for i, j := 0, len(lst)-1; i < j; i, j = i+1, j-1 {
			lst[i], lst[j] = lst[j], lst[i]
		}
	}
	return
}
