

rotate = function(text, key) {
  
  chars = unlist(strsplit(text, ""))
  
  paste(lapply(chars, 
               function(c) {
                 if (c %in% letters) {
                   base = utf8ToInt("a")
                 } else if (c %in% LETTERS) {
                   base = utf8ToInt("A")
                 } else {
                   return(c)
                 }
                 intToUtf8((utf8ToInt(c) - base + key) %% 26 + base)
               }), collapse="")
  
}
