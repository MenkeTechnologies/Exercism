module PerfectNumbers

type Classification =
    | Perfect
    | Abundant
    | Deficient

let aliquot n : int =
    [ 1 .. n / 2 ]
    |> Seq.filter (fun i -> n % i = 0)
    |> Seq.sum

let classify n : Classification option =
    if n < 1 then None else
        match aliquot n with
        | x when x < n -> Deficient
        | x when x > n -> Abundant
        | _ -> Perfect
        |> Some
 
