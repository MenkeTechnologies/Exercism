package kindergarten

import (
	"errors"
	"sort"
	"strings"
)

type Garden map[string][]string

var plantDict = map[string]string{"V": "violets", "R": "radishes", "G": "grass", "C": "clover"}

func NewGarden(diagram string, children []string) (*Garden, error) {
	g := Garden{}
	rows := strings.Split(strings.TrimSpace(diagram), "\n")
	if len(rows[0]) != len(rows[1]) || string(diagram[0]) != "\n" || len(rows[0])%2 != 0 {
		return &g, errors.New("")
	}
	kids := append(make([]string, 0, len(children)), children...)
	sort.Strings(kids)
	for i, child := range kids {
		_, exists := g[child]
		if exists {
			return &g, errors.New("child already has plants")
		}
		base := 2 * i
		g[child] = make([]string, 0, 4)
		for j := range rows {
			val1, exists1 := plantDict[string(rows[j][base])]
			val2, exists2 := plantDict[string(rows[j][base+1])]
			if !exists1 || !exists2 {
				return &g, errors.New("invalid plant abbreviation")
			}
			g[child] = append(g[child], val1, val2)
		}
	}
	return &g, nil
}
func (g *Garden) Plants(child string) (row []string, exists bool) {
	row, exists = (*g)[child]
	return
}
