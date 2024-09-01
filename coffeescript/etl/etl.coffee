module.exports = class
  @transform: (legacy) ->
    res = {}
    for score, letters of legacy
      for c in letters
        res[c.toLowerCase()] = +score
    res
