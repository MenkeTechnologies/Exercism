module ScrabbleScore

open System

let private letterToScore =
    function
    | 'D' | 'G' -> 2
    | 'B' | 'C' | 'M' | 'P' -> 3
    | 'F' | 'H' | 'V' | 'W' | 'Y' -> 4
    | 'K' -> 5
    | 'J' | 'X' -> 8
    | 'Q' | 'Z' -> 10
    | _ -> 1

let score word = word |> Seq.map (fun c -> c |> Char.ToUpper |> letterToScore) |> Seq.sum
