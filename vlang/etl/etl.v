module main

fn transform(legacy map[int][]rune) map[rune]int {
	mut res := map[rune]int{}
	for score, letters in legacy {
		for letter in letters {
			res[letter.str().to_lower()[0]] = score
		}
	}
	return res
}

