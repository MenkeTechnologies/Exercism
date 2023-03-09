diamond = function(letter) {
  nrows = which(LETTERS == letter)
  gen_row = function(i) {
    row = rep(" ", nrows * 2 - 1)
    row[nrows - (i - 1)] = LETTERS[i]
    row[nrows + (i - 1)] = LETTERS[i]
    paste(row, collapse = "")
  }
  top = lapply(seq(nrows), gen_row)
  paste(c(top, rev(top)[-1]), collapse = "\n")
}
