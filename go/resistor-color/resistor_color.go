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
var colors []string

func Colors() []string {
	if len(colors) == 0 {
		for color := range encoded {
			colors = append(colors, color)
		}
	}
	return colors
}
func ColorCode(color string) int {
	return encoded[color]
}
