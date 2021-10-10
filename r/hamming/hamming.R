# This is a stub function to take two strings
# and calculate the hamming distance
hamming =function(strand1, strand2) {
  
  
  if (nchar(strand1) != nchar(strand2)) {
    stop("This is an error message")
  }
  if (nchar(strand1) == 0 || nchar(strand2) == 0) {
    return(0)
  }
  cnt = 0
  i=1
  
  v1 = unlist(strsplit(strand1, ""))
  v2 = unlist(strsplit(strand2, ""))
  
  for (ch1 in v1){
    ch2 = v2[i]
    if (ch1 != ch2 ){
      cnt = cnt + 1
    }
    i = i + 1
  }
  
  
  cnt
}
