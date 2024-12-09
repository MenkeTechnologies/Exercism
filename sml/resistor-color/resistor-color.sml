val dict = [ ("black", 0) , ("brown", 1) , ("red", 2) , ("orange", 3) , ("yellow", 4) , ("green", 5) , ("blue", 6) , ("violet", 7) , ("grey", 8) , ("white", 9)
  ]

val colors = map #1 dict

fun colorCode color = #2 (valOf (List.find (fn (c, _) => c = color) dict))
