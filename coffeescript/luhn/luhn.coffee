class Luhn
  constructor: (num) ->
    @nows = num.replace(/\s/g, '')

    @sum = @nows
      .split('')
      .reverse()
      .map (x, i) -> if i & 1 then x * 2 else x * 1
      .map (x) -> if x > 9 then x - 9 else x
      .reduce (acc, n) -> acc + n

  valid: ->
    @nows.length > 1 and @sum % 10 == 0


module.exports = Luhn
