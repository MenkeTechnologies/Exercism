module [grainsOnSquare, totalGrains]

grainsOnSquare = \square ->
    when square is
        n if n < 1 || n > 64 -> Err InvalidArg
        n -> Num.powInt 2 (Num.intCast n - 1) |> Ok

totalGrains =
    List.range { start: At 1, end: At 64 }
    |> List.map (\x -> grainsOnSquare x |> Result.withDefault 0)
    |> List.sum
