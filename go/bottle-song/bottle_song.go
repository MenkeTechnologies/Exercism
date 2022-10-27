package bottlesong

import (
	"fmt"
	"strings"
)

func Recite(startBottles, takeDown int) (ary []string) {
	var counts = []string{"No green bottles", "One green bottle", "Two green bottles", "Three green bottles", "Four green bottles", "Five green bottles", "Six green bottles", "Seven green bottles", "Eight green bottles", "Nine green bottles", "Ten green bottles"}
	for i := startBottles; i > startBottles-takeDown; i-- {
		ary = append(ary, fmt.Sprintf("%s hanging on the wall,", counts[i]))
		ary = append(ary, fmt.Sprintf("%s hanging on the wall,", counts[i]))
		ary = append(ary, "And if one green bottle should accidentally fall,")
		ary = append(ary, fmt.Sprintf("There'll be %s hanging on the wall.", strings.ToLower(counts[i-1])))
		if i > startBottles-takeDown+1 {
			ary = append(ary, "")
		}
	}
	return
}
