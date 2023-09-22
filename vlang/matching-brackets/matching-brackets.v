fn is_paired(input string) bool {
	mut stk := []rune{}	
	pairs := { `]`:`[`, `)`:`(`, `}`:`{` }
	for c in input.runes() {
		if c in pairs.values() { stk << c }
		if c in pairs.keys() && (stk.len == 0 || stk.pop() != pairs[c]) {
            return false
		}
	}
	return stk.len == 0
}
