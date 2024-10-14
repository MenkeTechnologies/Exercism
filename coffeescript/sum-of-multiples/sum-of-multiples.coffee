module.exports = class
  @sum: (factors, limit) ->
    multiples = []
    for i in [1..limit - 1]
      for factor in factors
        if i % factor is 0
          multiples.push i
          break
    multiples.reduce ((acc, n) -> acc + n), 0
