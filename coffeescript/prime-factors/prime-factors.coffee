module.exports = class
  @factors: (value) ->
    factors = []
    divisor = 2
    while value > 1
      while value % divisor == 0
        factors.push divisor
        value /= divisor
      ++divisor
    factors
