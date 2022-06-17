lyrics = function(first, last) {
  paste0(sapply(c(first:last), verse), collapse = "\n")
}

verse = function(n) {
  s = paste0(n)
  paste0(switch(s, "0" = "No more bottles", "1" = "1 bottle", paste0(n, " bottles")),
         " of beer on the wall, ",
         switch(s, "0" = "no more bottles", "1" = "1 bottle", paste0(n, " bottles")),
         " of beer.\n",
         switch(s, "0" = "Go to the store and buy some more",
                         "1" = "Take it down and pass it around",
                         "Take one down and pass it around"),
         ", ",
         switch(s, "0" = "99 bottles", "1" = "no more bottles", "2" = "1 bottle", paste0(n - 1, " bottles")),
         " of beer on the wall.\n")
}

