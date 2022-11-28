module DifferenceOfSquares exposing (difference, squareOfSum, sumOfSquares)

squareOfSum n = (List.range 1 n |> List.sum) ^ 2
sumOfSquares n = List.range 1 n |>  List.map (\num -> num ^ 2) |> List.sum
difference n = squareOfSum n - sumOfSquares n
