module main

fn valid(luhn string) bool {
    candidate := luhn.bytes().filter(!it.is_space())
    if candidate.len <= 1 || !candidate.all(it.is_digit()) {
		return false
	}
	mut total := 0

	for i, n in candidate.reverse().map(int(it) - int(`0`)) {
		total += if (i + 1) % 2 == 0 {
			dbld := n * 2
			if dbld > 9 { dbld - 9 } else { dbld }
		} else {
			n
		}
	}
	return total % 10 == 0
}
