allergy <- function(num) {
  allergens = c('eggs', 'peanuts', 'shellfish', 'strawberries', 'tomatoes', 'chocolate', 'pollen', 'cats')
  rng=2**(0:(length(allergens) - 1))
  allergens[bitwAnd(rng, num) > 0]
}

allergic_to <- function(allergy_object, allergy) {
  allergy %in% allergy_object
}

list_allergies <- function(allergy_object) {
  allergy_object
}
