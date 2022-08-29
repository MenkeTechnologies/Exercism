package anagram

import (
	"sort"
	"strings"
)

func lcSort(s string) string {
	c := strings.Split(strings.ToLower(s), "")
	sort.Strings(c)
	return strings.Join(c, "")
}

func Detect(s string, candidates []string) (anagrams []string) {

	lc := lcSort(s)
	for _, cand := range candidates {
		lower := strings.ToLower(cand)
		if lcSort(cand) == lc && strings.ToLower(s) != lower {
			anagrams = append(anagrams, cand)
		}
	}
	return

}
