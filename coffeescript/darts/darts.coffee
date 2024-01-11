class Darts
  @score: (x, y) ->
    dist = Math.sqrt(Math.pow(x, 2) + Math.pow(y, 2))
    return 0 if dist > 10
    return 1 if dist > 5
    return 5 if dist > 1
    return 10

module.exports = Darts
