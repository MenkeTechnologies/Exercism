package accumulate

func Accumulate(list []string, f func(string) string) (r []string) {
	for _, n := range list {
		r = append(r, f(n))
	}

	return
}
