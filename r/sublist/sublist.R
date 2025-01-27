compare <- function(vec_one, vec_two) {
  s1 = paste(append(vec_one, ""), collapse=",")
  s2 = paste(append(vec_two, ""), collapse=",")

  ifelse (s1 == s2, "equal", ifelse(grepl(s1, s2, fixed=T), "subvector", ifelse(grepl(s2, s1, fixed=T), "supervector", "unequal")))
}

