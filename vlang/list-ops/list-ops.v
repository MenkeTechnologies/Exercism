module main

pub fn append[T](front []T, back []T) []T {
	mut res := front.clone()
	res << back
	return res
}

pub fn concat[T](array [][]T) []T {
	mut res := []T{}
	for arr in array {
		res << arr
	}
	return res
}

pub fn foldl[T, U](array []T, initial U, f fn (acc U, e T) U) U {
	mut res := initial
	for elem in array {
		res = f(res, elem)
	}
	return res
}

pub fn foldr[T, U](array []T, initial U, f fn (acc U, e T) U) U {
	return foldl(reverse(array), initial, f)
}

pub fn length[T](array []T) int {
	return array.len
}

pub fn reverse[T](array []T) []T {
	mut res := []T{}
	for i := array.len - 1; i >= 0; i-- {
		res << array[i]
	}
	return res
}

pub fn filter[T](array []T, f fn (e T) bool) []T {
	mut res := []T{}
	for elem in array {
		if f(elem) {
			res << elem
		}
	}
	return res
}

pub fn map_of[T, U](array []T, f fn (e T) U) []U {
	mut res := []U{}
	for elem in array {
		res << f(elem)
	}
	return res
}
