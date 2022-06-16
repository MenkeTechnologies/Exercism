is_isogram = function(word) {
  word = gsub(r"{\W}", "", word, perl=TRUE)
  ls = unlist(strsplit(tolower(word), ""))
  total = length(ls)
  uniq = length(unique(ls))
  ifelse(total == uniq, TRUE, FALSE)

}
