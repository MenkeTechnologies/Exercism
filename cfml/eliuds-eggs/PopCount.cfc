component {

	function eggCount(number) {
        var cnt = 0
        while (number > 0) {
            cnt += number % 2
            number = BitSHRN(number, 1)

        }
        return cnt
	}

}
