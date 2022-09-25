var COLOR_TO_RESISTANCE = {
    "black": 0,
    "brown": 1,
    "red": 2,
    "orange": 3,
    "yellow": 4,
    "green": 5,
    "blue": 6,
    "violet": 7,
    "grey": 8,
    "white": 9,
}
class ResistorDuo {
  static decodedValue(colors) {
    return colors.take(2).map {|color| COLOR_TO_RESISTANCE[color]}
    .reduce(0) {|acc, n| acc * 10 + n}
  }
}

