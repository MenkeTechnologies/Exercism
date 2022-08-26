package listops

type binFunc func(int, int) int
type predFunc func(int) bool
type unaryFunc func(int) int
type IntList []int

func (l IntList) Foldr(f binFunc, initial int) int {
	for i := l.Length() - 1; i >= 0; i-- {
		initial = f(l[i], initial)
	}
	return initial
}
func (l IntList) Foldl(f binFunc, initial int) int {
	for _, i := range l {
		initial = f(initial, i)
	}
	return initial
}
func (l IntList) Filter(f predFunc) IntList {
	r := IntList{}
	for _, i := range l {
		if f(i) {
			r = r.Append(IntList{i})
		}
	}
	return r
}
func (l IntList) Length() int {
	return l.Foldl(func(x, y int) int { return x + 1 }, 0)
}
func (l IntList) Map(f unaryFunc) IntList {
	r := IntList{}
	for _, i := range l {
		r = r.Append(IntList{f(i)})
	}
	return r
}
func (l IntList) Reverse() IntList {
	r := IntList{}
	for i := l.Length() - 1; i >= 0; i-- {
		r = r.Append(IntList{l[i]})
	}
	return r
}
func (l IntList) Append(lst IntList) IntList {
	r := make(IntList, len(l)+len(lst))
	i := 0
	for ; i < len(l); i++ {
		r[i] = l[i]
	}
	for j := 0; j < len(lst); j++ {
		r[i] = lst[j]
		i++
	}
	return r
}
func (l IntList) Concat(lsts []IntList) IntList {
	r := IntList{}.Append(l)
	for _, lst := range lsts {
		r = r.Append(lst)
	}
	return r
}
