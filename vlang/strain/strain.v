module main
pub fn keep[T](ary []T, f fn (e T) bool) []T {
	mut res := []T{cap: ary.len}
	for n in ary {
		if f(n) {
			res << n
		}
	}
	return res
}
pub fn discard[T](ary []T, f fn (e T) bool) []T {
	mut res := []T{cap: ary.len}
	for n in ary {
		if !f(n) {
			res << n
		}
	}
	return res
}
