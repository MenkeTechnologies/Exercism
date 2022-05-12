var ALLERGENS = {
    "eggs": 1,
    "peanuts": 2,
    "shellfish": 4,
    "strawberries": 8,
    "tomatoes": 16,
    "chocolate": 32,
    "pollen": 64,
    "cats": 128
}

class Allergies {
  construct new(value) {
      _value = value
  }

  list() { ALLERGENS.keys.where {|n| allergicTo(n) }.toList }

  allergicTo(name) {
      if (!ALLERGENS[name]) return false
      return ALLERGENS[name] & _value > 0
  }
}
