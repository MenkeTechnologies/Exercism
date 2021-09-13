package brackets

var m = map[rune]rune{
	'(': ')',
	'[': ']',
	'{': '}',
}

func Bracket(input string) bool {

	var stack []rune

	for _, r := range input {

		for k, v := range m {
			if k == r {
				stack = append(stack, r)
				break
			} else if v == r {
				if len(stack) == 0 || stack[len(stack)-1] != k {
					return false
				}
				stack = stack[:len(stack)-1]
				break
			}
		}

	}

	return len(stack) == 0

}
