fun noDups [] = true
  | noDups (c :: cs) = not (List.exists (fn x => x = c) cs) andalso noDups cs

fun isIsogram s = noDups (List.filter Char.isAlpha (map Char.toLower (explode s)))
