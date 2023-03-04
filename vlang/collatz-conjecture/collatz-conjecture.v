module main

fn collatz(number int) !int {
	if number < 1 {
		return error('input number must be positive!')
	}
	mut counter := 0
	mut dup := number
	for dup != 1 {
		counter++
		dup = if dup % 2 == 0 { dup / 2 } else { 3 * dup + 1 }
	}
	return counter
}
