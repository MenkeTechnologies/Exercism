fun is_delim c = Char.contains " -_," c
fun first_char_up s = Char.toUpper (String.sub (s, 0))

fun abbreviate s =
  let val tokens = String.tokens is_delim s
  in
    String.implode (List.map first_char_up tokens)
  end
