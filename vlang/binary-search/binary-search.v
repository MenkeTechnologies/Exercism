module main
pub fn find(array []int, value int) !int {
	mut lo := 0
	mut hi := array.len - 1
	for mid := 0; lo <= hi; mid = (lo + hi) / 2 {
		if array[mid] < value {
			lo = mid + 1
		} else if array[mid] > value {
			hi = mid - 1
		} else {
			return mid
		}
	}
	return error('value not in array')
}

