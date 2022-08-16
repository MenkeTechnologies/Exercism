class Binary
  constructor: (@input) ->
    @decimal = 0
    @decimal += Math.pow(2, i) for c, i in @input.split('').reverse() when c is '1'
  toDecimal: -> @decimal
module.exports = Binary
