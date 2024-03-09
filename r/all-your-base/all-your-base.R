rebase = function(from_base, digits, to_base) {
  if (from_base < 2) stop("input base must be >= 2")
  if (to_base < 2) stop("output base must be >= 2")
  if (any(digits < 0 | digits >= from_base)) stop("all digits must satisfy 0 <= d < input base")
  num = 0
  if (length(digits) < 1) return (0)
  for (i in 1:length(digits)) {
    num = num * from_base + digits[[i]]
  }
  output <- c()
  if (num == 0) return(0)
  while (num > 0) {
    output <- c(num %% to_base, output)
    num <- num %/% to_base
  }
  output
}
