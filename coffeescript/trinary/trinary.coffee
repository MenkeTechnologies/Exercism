module.exports = class Trinary
  constructor: (@value) ->
  toDecimal: () ->
    return 0 if ! /^[012]+$/.test @value
    @value.split('').reduce(((acc, n) -> acc * 3 + parseInt(n)), 0)
