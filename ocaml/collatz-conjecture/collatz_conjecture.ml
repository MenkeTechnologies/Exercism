open Base

let collatz_conjecture n =
  let rec aux cnt num =
    if num < 1 then
      Error "Only positive integers are allowed"
    else if num = 1 then
      Ok cnt
    else if (num % 2) = 0 then
      aux (cnt + 1) (num / 2)
    else
      aux (cnt + 1) (3 * num + 1)
  in aux 0 n

