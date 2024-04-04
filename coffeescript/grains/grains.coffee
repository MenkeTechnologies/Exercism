module.exports = class
  @square: (n) ->
    throw "square must be between 1 and 64" if n < 1 || n > 64
    Math.pow(2, n - 1)
  @total:  -> Math.pow(2, 64) - 1
