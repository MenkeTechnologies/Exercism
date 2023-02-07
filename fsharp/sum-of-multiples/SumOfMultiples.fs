module SumOfMultiples

let isMultiple f n = n <> 0 && f % n = 0

let sum factors limit =
    [ 1 .. limit - 1 ]
    |> List.filter (fun n -> factors |> List.exists (isMultiple n))
    |> List.sum
