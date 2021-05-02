package raindrops

import "strconv"

func Convert(input int) string {

	var fin = ""
	var match = false

	if input%3 == 0 {
		fin += "Pling"
		match = true
	}

	if input%5 == 0 {

		fin += "Plang"
		match = true
	}

	if input%7 == 0 {

		fin += "Plong"
		match = true
	}

	if !match {
		fin += strconv.Itoa(input)
	}

	return fin

}
