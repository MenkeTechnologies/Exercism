package eliudseggs

func EggCount(displayValue int) (cnt int) {
	for displayValue > 0 {
		cnt += displayValue & 1
		displayValue >>= 1
	}
	return
}

