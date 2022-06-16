bob = function(input) {
  nows = trimws(input)
  has_letters = any(strsplit(nows , "", fixed=TRUE)[[1]] %in% c(letters, LETTERS))
  yelling = nows == toupper(nows) && has_letters
  question = substr(nows , start=nchar(nows), stop=nchar(nows)) == "?"

  if (nows == "") return("Fine. Be that way!")
  if (question && !yelling) return("Sure.")
  if (question && yelling) return("Calm down, I know what I'm doing!")
  if (yelling) return("Whoa, chill out!")

  return("Whatever.")
}

