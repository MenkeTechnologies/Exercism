largest_series_product = function(digits, span){
  if (span < 0) stop("negative span")
  if (span == 0) return (1)
  if (nchar(digits) < span) stop("span is larger than string len")
  ary = as.integer( unlist(strsplit(digits, '')) )
  max = 0
  for (i in seq(length(ary) - span + 1)) {
    curr = prod(ary[i:(i + span - 1)])
    if (max < curr) { max = curr }
  }
  max
}
