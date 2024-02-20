module.exports = class CollatzConjecture
  @steps: (n) ->
    throw new Error('Only positive integers are allowed') if n < 1
    cnt = 0
    while n > 1
      if n % 2 == 0 then n /= 2 else n = 3 * n + 1
      ++cnt
    cnt
