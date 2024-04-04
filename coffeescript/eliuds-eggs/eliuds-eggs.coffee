module.exports = class
  @eggCount: (displayValue) ->
    cnt = 0
    while displayValue
      cnt += displayValue % 2
      displayValue >>= 1
    cnt
