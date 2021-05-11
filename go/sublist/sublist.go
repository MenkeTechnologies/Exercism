package sublist

type Relation string

func equal(a []int, b []int) bool {

	if a == nil || b == nil {
		return false
	}

	if len(a) != len(b) {
		return false
	}

	for i := range a {
		if a[i] != b[i] {
			return false
		}
	}

	return true
}

func sub(a, b []int) bool {
	for i := 0; i <= len(b)-len(a); i++ {
		sl := b[i : i+len(a)]
		if equal(a, sl) {
			return true
		}
	}
	return false
}

func Sublist(a, b []int) Relation {
	if equal(a, b) {
		return "equal"
	}

	if sub(a, b) {
		return "sublist"
	}

	if sub(b, a) {
		return "superlist"
	}

	return "unequal"
}
