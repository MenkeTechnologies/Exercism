open Base

let factors_of num =
  let open Int64.O in
  let primes = function
    | 2L -> 3L
    | m -> m + 2L
    in
  let rec aux n m acc =
    if n = 1L then acc
    else if n % m = 0L then aux (n / m) m (m :: acc)
    else aux n (primes m) acc
    in
  if num <= 0L then
    raise (Invalid_argument "factors_of")
  else List.rev (aux num 2L [])

