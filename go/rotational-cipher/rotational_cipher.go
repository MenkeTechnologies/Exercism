package rotationalcipher

func RotationalCipher(s string, rot int) string {
	var r []rune
	for _, c := range s {
		base := 0
		switch {
		case c >= 'A' && c <= 'Z':
			base = int('A')
		case c >= 'a' && c <= 'z':
			base = int('a')
		}
		if base != 0 {
			c = rune((int(c) - base + rot) % 26 + base)
		}
		r = append(r, c)
	}
	return string(r)
}
