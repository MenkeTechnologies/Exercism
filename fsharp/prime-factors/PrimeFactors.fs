module PrimeFactors

let factors start =
    (start, 2L)
    |> List.unfold (function
        | 1L, _ -> None
        | n, divisor when n % divisor = 0L -> Some(divisor |> int |> Some, (n / divisor, divisor))
        | n, divisor -> Some(None, (n, divisor + 1L)))
    |> List.choose id
