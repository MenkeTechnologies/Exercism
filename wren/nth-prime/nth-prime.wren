class NthPrime {
  static prime(number) {
    if (number < 1) Fiber.abort("there is no zeroth prime")
    var primes = [2]
    var i = 3
    while (primes.count < number) {
      var isPrime = true
      for (p in primes) if (i % p == 0) {
        isPrime = false
        break
      }
      if (isPrime) primes.add(i)
      i = i + 2
    }
    return primes[-1]
  }
}
