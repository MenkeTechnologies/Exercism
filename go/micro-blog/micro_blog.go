package microblog

func Truncate(s string) string {
	runes := []rune(s)
	return string(runes[:min(len(runes), 5)])
}