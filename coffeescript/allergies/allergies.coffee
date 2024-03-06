ALLERGENS = [
  "eggs"
  "peanuts"
  "shellfish"
  "strawberries"
  "tomatoes"
  "chocolate"
  "pollen"
  "cats"
]
module.exports = class Allergies
  constructor: (@score) ->
  list: () -> ALLERGENS.filter (_, index) => @score & (1 << index)
  allergicTo: (food) -> @list().some (allergen) -> allergen == food
