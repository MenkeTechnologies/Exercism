sieve = function(limit) {
  if (limit < 2) return(c())
  primes = 2:limit
  for (n in primes){
    primes = primes[primes %% n != 0 | primes == n]
  }
  primes
}

