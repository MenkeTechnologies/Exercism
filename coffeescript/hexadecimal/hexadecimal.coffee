# This is a stub file for the CoffeeScript track
class Hexadecimal
  constructor: (@s) ->

  toDecimal: () ->
    r = 0
    for c in @s
      c = c.charCodeAt(0)
      r *= 16
      if (c - '0'.charCodeAt(0) < 10)
        r += c - '0'.charCodeAt(0);
      else if (c - 'a'.charCodeAt(0) < 6)
        r += c - 'a'.charCodeAt(0) + 10;
      else
        return 0
    return r


module.exports = Hexadecimal
