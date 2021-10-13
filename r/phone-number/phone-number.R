parse_phone_number = function(number_string) {
  str = gsub(r"{[^\d]}", "", number_string, perl=T)
  if (nchar(str) <= 9 || nchar(str) >= 12) {
    return(NULL)
  }
  if (nchar(str) == 11) {
    if (!grepl(r"{^1\d+}",str, perl=T)){
      return(NULL)
    }
    str=sub(".", "", str)
  }
  
  if (!grepl("[2-9]\\d{2}[2-9]\\d{6}", str, perl=T)){
    return(NULL)
  }
  
  str
  
}
