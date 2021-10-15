# this is a stub function that takes a natural_number
# and should return the difference-of-squares as described
# in the README.md
difference_of_squares = function(natural_number) {
  
  sumsq = 0
  sqsum = 0
  
  for (i in 1:natural_number){
    sumsq = sumsq + i ** 2
    sqsum = sqsum + i
  }
  
  sqsum = sqsum ** 2
  
  sqsum - sumsq
  
}
