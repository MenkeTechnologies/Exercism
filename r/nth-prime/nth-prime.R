prime = function(n) {
  stopifnot(n > 0)
  primes = c(2)
  current = 3
  while (length(primes) < n) {
    if (all(current %% primes != 0)) primes = c(primes, current)
    current = current + 2
  }
  primes[n]
}