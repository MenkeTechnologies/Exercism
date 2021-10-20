square = function(n) {
  
  if (n > 64 || n < 1) {
    stop("error with n")
  }

  2 ** (n - 1)
}

total = function() {
  sum = 0
  for (i in 1:64){
    sum = sum + square(i)
  }
  
  sum
}
