is_valid = function(isbn) {
  noDash = gsub(pattern = "-", replacement = "", isbn)
  if (!grepl("^\\d{9}(\\d|X)$", noDash))  return(FALSE)
  
  chars = noDash |> strsplit("") |> unlist() |> rev()
  if (chars[1] == "X") chars[1] = "10"
  sum(as.numeric(chars) * 1:10) %% 11 == 0
}