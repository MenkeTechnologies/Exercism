fun aux (x, []) = [x]
  | aux (x, y::ys) = if x <= y then x::y::ys else y::aux(x, ys)

fun sort lst = foldr aux [] lst

fun anagramsFor subject candidates =
  let val lc = String.map Char.toLower subject
    val sorted_lc = implode (sort (explode lc))
    fun f x = let val lc2 = String.map Char.toLower x in
      lc <> lc2 andalso sorted_lc = implode (sort (explode lc2)) end
    in List.filter f candidates end

