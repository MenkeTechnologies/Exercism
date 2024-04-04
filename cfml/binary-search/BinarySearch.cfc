component {
	function find( array, target ) {
		lo = 1
        hi = Len(array)
        while(lo <= hi) {
            mid = (lo + hi) \ 2
            value = array[index]
            if (value == target) {
                return index
            }
            if (value < target) {
                lo = index + 1
            }  else {
                hi = index - 1
            }
        }
        throw 'value not in list'
	}
}
