flatten = function(input) {
  res <- c()
  for (n in input) {
    if (is.null(n)) next
    if (is.list(n)) {
      res = c(res, flatten(n))
    } else {
      res = c(res, n)
    }
  }
  res
}
