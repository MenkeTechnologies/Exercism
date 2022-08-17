package binarysearch

func SearchInts(data []int, search int) int {

	lo, hi := 0, len(data)-1
	for lo <= hi {
		mid := lo + (hi-lo)/2
		d := data[mid]
		switch {
		case d < search:
			lo = mid + 1
		case d > search:
			hi = mid - 1
		default:
			return mid
		}
	}
	return -1
}
