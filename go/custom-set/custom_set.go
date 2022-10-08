package stringset

import (
	"strings"
)

type Set map[string]struct{}

func new(cap int) Set {
	return make(map[string]struct{}, cap)
}
func New() Set {
	return new(0)
}
func (s Set) IsEmpty() bool {
	return len(s) == 0
}
func (s Set) Has(m string) bool {
	_, ok := s[m]
	return ok
}
func (s Set) Add(m string) {
	s[m] = struct{}{}
}
func NewFromSlice(ss []string) Set {
	r := new(len(ss))
	for _, v := range ss {
		r.Add(v)
	}
	return r
}
func (s Set) String() string {
	length := len(s)
	var out strings.Builder
	out.WriteByte('{')
	for key := range s {
		out.WriteByte('"')
		out.WriteString(key)
		out.WriteByte('"')
		if length--; length > 0 {
			out.WriteString(", ")
		}
	}
	out.WriteByte('}')
	return out.String()
}
func Subset(s1, s2 Set) bool {
	for key := range s1 {
		if !s2.Has(key) {
			return false
		}
	}
	return true
}
func Equal(s1, s2 Set) bool {
	if len(s1) != len(s2) {
		return false
	}
	return Subset(s1, s2)
}
func Intersection(s1, s2 Set) Set {
	r := new(len(s1))
	if len(s1) > len(s2) {
		s1, s2 = s2, s1
	}
	for key := range s1 {
		if s2.Has(key) {
			r.Add(key)
		}
	}
	return r
}
func Disjoint(s1, s2 Set) bool {
	return Intersection(s1, s2).IsEmpty()
}
func Difference(s1, s2 Set) Set {
	r := new(len(s1))
	for key := range s1 {
		if !s2.Has(key) {
			r.Add(key)
		}
	}
	return r
}
func Union(s1, s2 Set) Set {
	r := new(len(s1) + len(s2))
	for k := range s1 {
		r.Add(k)
	}
	for k := range s2 {
		r.Add(k)
	}
	return r
}
