module main
pub enum Number {
	perfect
	abundant
	deficient
}

pub fn classify(candidate int) !Number {
	if candidate < 1 {
		return error('Classification is only possible for positive integers.')
	}
	mut aliquot_sum := 0
	for i in 1 .. candidate {
		if candidate % i == 0 {
			aliquot_sum += i
		}
	}
	if aliquot_sum == candidate {
		return Number.perfect
	} else if aliquot_sum > candidate {
		return Number.abundant
	} else {
		return Number.deficient
	}
}
