raindrops = function(n) {

  str = ""
  
  if (n %% 3 == 0) {
    str = paste(str, "Pling", sep="")
  }
  if (n %% 5 == 0) {
    str = paste(str, "Plang", sep="")
  }
  if (n %% 7 == 0) {
    str = paste(str, "Plong", sep="")
  }
  if (nchar(str) == 0 ){
    str = toString(n)
  }
  
  str
}
