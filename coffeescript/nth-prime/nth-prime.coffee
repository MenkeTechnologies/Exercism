class Prime
  @nth: (n) ->
    throw new Error "Prime is not possible" if n <= 0
    primes = [2]
    num = 3
    until primes.length is n
      primes.push num if primes.every (factor) -> num % factor != 0
      num += 2
    primes.pop()
module.exports = Prime
