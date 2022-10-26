package cipher

type Shift struct{ encodeKey, decodeKey []rune }
type Caesar Shift
type Vigenere Shift

func NewCaesar() Cipher {
	return Caesar{[]rune{3}, []rune{-3}}
}

func NewShift(dist int) Cipher {
	if dist < -24 || dist > 25 || dist == 0 {
		return nil
	}
	offset := rune(dist)
	return Shift{[]rune{offset}, []rune{-offset}}
}

func NewVigenere(key string) Cipher {
	if len(key) < 3 {
		return nil
	}
	var encodeKey, decodeKey []rune
	for _, r := range key {
		if r < 'a' || r > 'z' {
			return nil
		}
		offset := r - 'a'
		encodeKey = append(encodeKey, offset)
		decodeKey = append(decodeKey, -offset)
	}
	return Vigenere{encodeKey, decodeKey}
}

func shift(s string, off []rune) string {
	var cipher []rune
	offIndex, l := 0, len(off)
	for _, c := range s {
		if c >= 'A' && c <= 'Z' {
			c = 'a' + (c - 'A')
		}
		var rotated rune = -1
		if c >= 'a' && c <= 'z' {
			rotated = 'a' + (c-'a'+off[offIndex]+26)%26
			if offIndex++; offIndex >= l {
				offIndex = 0
			}
			cipher = append(cipher, rotated)
		}
	}
	return string(cipher)
}

func (c Caesar) Encode(m string) string   { return shift(m, c.encodeKey) }
func (c Caesar) Decode(m string) string   { return shift(m, c.decodeKey) }
func (s Shift) Encode(m string) string    { return shift(m, s.encodeKey) }
func (s Shift) Decode(m string) string    { return shift(m, s.decodeKey) }
func (v Vigenere) Encode(m string) string { return shift(m, v.encodeKey) }
func (v Vigenere) Decode(m string) string { return shift(m, v.decodeKey) }
