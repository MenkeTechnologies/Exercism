number_type <- function(n){
  if (n < 1) {
    stop("n must be natural number")
  } else if (n == 1) {
    return("deficient")
  }
  
  m = n / 2
  aliquot = sum((1:m)[(n %% 1:m) == 0])
  
  if (aliquot == n) {
    "perfect"
  } else if (aliquot > n) {
    "abundant"
  } else {
    "deficient"
  }
  
}
