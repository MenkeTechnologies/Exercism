component {
	
	function steps(number) {
		var cnt = 0;
        if (number < 1) throw 'Only positive integers are allowed'
        while (number > 1) {
            if (number % 2 == 0) {
                number = number \ 2
            } else {
                number = 3 * number + 1
            }
            ++cnt;
        }
        return cnt;
	}
	
}
