infixr |>
fun x |> f = f x

fun is_delim c = c |> Char.contains " -_,"
fun first_char_up s = String.sub (s, 0) |> Char.toUpper

fun abbreviate s =
  let val tokens = s |> String.tokens is_delim
  in
    List.map first_char_up tokens |> String.implode
  end
