package strand

var MAP = map[rune]rune{
	'G': 'C',
	'C': 'G',
	'T': 'A',
	'A': 'U',
}

func ToRNA(dna string) string {

	out := make([]rune, len(dna))
	for i, c := range dna {
		out[i] = MAP[c]
	}

	return string(out)
}
