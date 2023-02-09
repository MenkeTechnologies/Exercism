module Sieve

let filterMultiples xs divisor = xs |> List.filter (fun x -> x % divisor <> 0)

let rec aux listx =
    match listx with
    | head :: _ -> head :: aux (filterMultiples listx head)
    | [] -> []

let primes limit = aux [ 2 .. limit ]
