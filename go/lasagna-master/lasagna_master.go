package lasagna

func PreparationTime(layers []string, preparationTimePerLayer int) int {
	if preparationTimePerLayer <= 0 {
		preparationTimePerLayer = 2
	}

	return len(layers) * preparationTimePerLayer
}

func Quantities(layers []string) (noodles int, sauce float64) {

	for _, v := range layers {
		if v == "noodles" {
			noodles += 50
		}
		if v == "sauce" {
			sauce += 0.2
		}
	}

	return
}

func AddSecretIngredient(friendsList, myList []string) []string {
	myList[len(myList)-1] = friendsList[len(friendsList)-1]
	return myList
}

func ScaleRecipe(qtys []float64, portions int) []float64 {
	out := make([]float64, len(qtys))
	for i, v := range qtys {
		out[i] = (v / 2) * float64(portions)
	}

	return out

}
