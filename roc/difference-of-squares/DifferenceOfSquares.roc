module [squareOfSum, sumOfSquares, differenceOfSquares]

squareOfSum = \n -> List.range { start: At 1, end: At n } |> List.sum |> Num.powInt 2

sumOfSquares = \n -> List.range { start: At 1, end: At n } |> List.map (\num -> num * num) |> List.sum

differenceOfSquares = \n -> squareOfSum n - sumOfSquares n
