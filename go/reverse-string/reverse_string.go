package reverse

func Reverse(in string) (r string) {
	for _, c := range in {
		r = string(c) + r
	}
	return
}
