module main

enum Allergen as u8 {
	eggs         = 1
	peanuts      = 2
	shellfish    = 4
	strawberries = 8
	tomatoes     = 16
	chocolate    = 32
	pollen       = 64
	cats         = 128
}

fn allergic_to(allergen Allergen, score u8) bool {
	return score & u8(allergen) > 0
}

fn all_allergens() []Allergen {
    return [.eggs, .peanuts, .shellfish, .strawberries, .tomatoes, .chocolate, .pollen, .cats]
}

fn list(score u8) []Allergen {
    return all_allergens().filter(fn [score] (allergen Allergen) bool {return allergic_to(allergen, score)})
}
