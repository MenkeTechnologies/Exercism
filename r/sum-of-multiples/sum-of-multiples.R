sum_of_multiples = function(factors, limit) {
  sum(Filter(function(number) { any(number %% factors == 0) }, 1:(limit-1)))
}
