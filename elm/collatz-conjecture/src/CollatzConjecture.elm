module CollatzConjecture exposing (collatz)
collatz : Int -> Result String Int
collatz start =
  if start < 1 then
    Err "Only positive integers are allowed"
  else
    Ok (aux start)

aux : Int -> Int
aux n =
  if n < 2 then
    0
  else if modBy 2 n == 0 then
    1 + aux (n // 2)
  else
    1 + aux (3 * n + 1)
