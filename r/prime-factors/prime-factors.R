prime_factors = function(n) {
  factors = c()
  cur_prime = 2

  while (n > 1) {
    if (n %% cur_prime == 0) {
      n = n / cur_prime
      factors[length(factors) + 1] = cur_prime
    } else {
      cur_prime = cur_prime + 1
    }
  }
  factors
}
