fun collatz_rec (n, count) =
  if n=1 then
    SOME count
  else
    if n mod 2 = 0 then
      collatz_rec (n div 2, count + 1)
    else
      collatz_rec (n * 3 + 1, count + 1)

fun collatz n =
  if n < 1 then
      NONE
  else
    collatz_rec(n,0)
