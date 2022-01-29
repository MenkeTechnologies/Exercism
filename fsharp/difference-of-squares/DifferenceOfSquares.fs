module DifferenceOfSquares

let sq x = x * x
let squareOfSum (number: int): int = seq {1 .. number} |> Seq.sum |>  sq

let sumOfSquares (number: int): int = seq {1 .. number } |> Seq.map(sq) |> Seq.sum

let differenceOfSquares (number: int): int = squareOfSum number - sumOfSquares number
