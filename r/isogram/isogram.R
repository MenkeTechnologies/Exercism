is_isogram = function(word) {
  word = gsub(r"{\W}", "", word, perl=TRUE)
  ls = unlist(strsplit(tolower(word), ""))
  total = length(ls)
  unique = length(unique(ls))
  ifelse(total == unique, TRUE, FALSE)

}
