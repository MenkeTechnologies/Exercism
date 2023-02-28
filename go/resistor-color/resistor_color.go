package resistorcolor

var encoded = map[string]int{
	"black":  0,
	"brown":  1,
	"red":    2,
	"orange": 3,
	"yellow": 4,
	"green":  5,
	"blue":   6,
	"violet": 7,
	"grey":   8,
	"white":  9,
}

func Colors() (result []string) {
	if len(result) == 0 {
		for color := range encoded {
			result = append(result, color)
		}
	}
	return
}
func ColorCode(color string) int {
	return encoded[color]
}
