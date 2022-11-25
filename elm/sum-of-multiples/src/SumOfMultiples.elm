module SumOfMultiples exposing (sumOfMultiples)

sumOfMultiples factors limit =
    List.range 1 (limit - 1)
        |> List.filter (isDivisibleBy factors)
        |> List.foldl (+) 0

isDivisibleBy factors num =
    List.any (\f -> remainderBy f num == 0) factors

