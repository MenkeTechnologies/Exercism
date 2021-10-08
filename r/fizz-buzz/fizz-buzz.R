fizz_buzz <- function(input) {
  v = vector()
  for (i in 1:input) {
    
    if (i %% 15 == 0){
      v[i] = "Fizz Buzz"
    } else if (i %% 3 == 0){
      v[i] = "Fizz"
    }
    else if (i %% 5 == 0){
      v[i] = "Buzz"
    } else {
      v[i] = i
    }
    
  }
  
  v
  
}
