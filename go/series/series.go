package series

func All(n int, s string) (ret []string) {
	ret = make([]string, 0)
	for i := 0; i <= len(s)-n; i++ {
		ret = append(ret, s[i:i+n])
	}
	return
}
func UnsafeFirst(n int, s string) string {
	return s[0:n]
}
