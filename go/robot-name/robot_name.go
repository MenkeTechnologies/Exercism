package robotname

import (
	"errors"
	"math/rand"
	"strings"
	"time"
)

type Robot struct {
	name string
}

const max = 26 * 26 * 10 * 10 * 10

var used = map[string]bool{}

func (r *Robot) Name() (string, error) {

	if r.name == "" {

		if len(used) == max {
			return "", errors.New("no more names")
		}

		r.Reset()
	}

	return r.name, nil

}

func (r *Robot) Reset() {

	for {
		var name = gen()
		if !used[name] {
			r.name = name
			break
		}

	}

}

func gen() string {

	s1 := rand.NewSource(time.Now().UnixNano())
	r1 := rand.New(s1)

	var name strings.Builder

	var c1 = rune(r1.Intn(26) + 'A')
	var c2 = rune(r1.Intn(26) + 'A')

	var i1 = rune(r1.Intn(10) + '0')
	var i2 = rune(r1.Intn(10) + '0')
	var i3 = rune(r1.Intn(10) + '0')

	name.WriteRune(c1)
	name.WriteRune(c2)
	name.WriteRune(i1)
	name.WriteRune(i2)
	name.WriteRune(i3)

	return name.String()

}
