# Determine whether the number is valid.
is_valid <- function(input) {
  
  input = gsub(" ", "", input)
  
  if (nchar(input) < 2 || grepl("\\D", input)){
    return(FALSE)
  }
  
  i = 0; sum = 0
  for (c in as.integer(rev(strsplit(input,"")[[1]]))){
    if (i %% 2 == 1) c = c * 2
    sum = sum + ifelse(c > 9, c - 9, c)
    i = i + 1
  }
  
  sum %% 10 == 0
}