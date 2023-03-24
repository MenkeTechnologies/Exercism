hamming = function(s1, s2) {
  if (nchar(s1) != nchar(s2)) {
    stop("the two strands must be of equal length")
  } else {
    sum(charToRaw(s1) != charToRaw(s2))
  }
}
