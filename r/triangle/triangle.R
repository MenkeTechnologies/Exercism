
lst_class <- list(c("equilateral", "isosceles"), "isosceles", "scalene")

triangle = function(x, y, z) {
  sorted = sort(c(x, y, z))

  stopifnot(sorted[1] > 0 && sorted[1] + sorted[2] >= sorted[3])

  class(sorted) = lst_class[[length(unique(sorted))]]
  sorted
}
