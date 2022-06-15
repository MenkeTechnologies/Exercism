# Determine whether the number is valid.
is_valid <- function(input) {
  
  nows = gsub(" ", "", input)
  
  if (nchar(nows) < 2 || grepl("\\D", nows)){
    return(FALSE)
  }
  
  i = 0; sum = 0
  for (c in as.integer(rev(strsplit(nows,"")[[1]]))){
    if (i %% 2 == 1) c = c * 2
    sum = sum + ifelse(c > 9, c - 9, c)
    i = i + 1
  }
  
  sum %% 10 == 0
}