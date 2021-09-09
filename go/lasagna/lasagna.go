package lasagna

func OvenTime() int {
	return 40
}

func RemainingOvenTime(i int) int {
	return OvenTime() - i
}

func PreparationTime(i int) int {
	return i * 2

}

func ElapsedTime(i int, j int) int {
	return PreparationTime(i) + j
}
