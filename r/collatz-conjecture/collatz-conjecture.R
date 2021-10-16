collatz_step_counter = Vectorize(function(num) {
  
  if (num <= 0) {
    stop("bad input num")
  }
  
  cnt = 0
  
  while (num != 1){
    
  if (num %% 2 == 0){
    num = num / 2
  } else {
    num = 3 * num + 1
  }
cnt = cnt + 1
  }
  
  cnt
  
})
