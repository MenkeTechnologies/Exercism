module.exports = class
  @isValid: (s) ->
    return false if !s.match /^\d-?\d{3}-?\d{5}-?[\dX]$/
    digits = s.split('').filter((c) -> /[\dX]/.test c).reverse()
    .map((c, i) -> (if c == 'X' then 10 else c) * (i + 1) ).reduce((acc,n) -> acc + n) % 11 == 0
