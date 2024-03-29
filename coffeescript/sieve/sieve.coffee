module.exports = class Sieve
  @primes: (max) ->
    results = []
    return results if max == 1
    numbers = [2..max]
    while numbers.length > 0
        results.push numbers[0]
        numbers = numbers.filter (current) -> current % numbers[0] != 0
    results
