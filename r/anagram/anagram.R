anagram = function(s, candidates) {

  s = tolower(s)
  sorted = paste(sort(unlist(strsplit(s, ""))), collapse = "")
  vec = c()
  
  for (s2 in candidates) {
    
    s2l = tolower(s2)
    sorted2 = paste(sort(unlist(strsplit(s2l, ""))), collapse = "")
    if (sorted == sorted2 && s != s2l) {
      vec = append(vec, s2)
    }
  }
  
  vec
  
}
