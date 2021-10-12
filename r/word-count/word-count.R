word_count = function(input) {
 str = trimws(gsub(r"{(?!\w|'\w+\b).}", " ", tolower(input), perl=T))
 w = strsplit(str, r"{\s+}")

 as.list(table(w))
}
