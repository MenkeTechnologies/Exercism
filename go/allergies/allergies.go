package allergies

import "sort"

var allergenCodes = map[string]byte{
	"eggs":         1,
	"peanuts":      2,
	"shellfish":    4,
	"strawberries": 8,
	"tomatoes":     16,
	"chocolate":    32,
	"pollen":       64,
	"cats":         128}

func Allergies(mask uint) (out []string) {

	for k, _ := range allergenCodes {
		if AllergicTo(mask, k) {
			out = append(out, k)
		}
	}

	sort.Slice(out, func(i, j int) bool {
		return allergenCodes[out[i]] < allergenCodes[out[j]]
	})

	return

}

func AllergicTo(mask uint, allergen string) bool {
	return byte(mask)&allergenCodes[allergen] > 0

}
