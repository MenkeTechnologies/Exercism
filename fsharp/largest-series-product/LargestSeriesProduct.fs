module LargestSeriesProduct

open System

let largestProduct (input: string) len: int option =
    if not (Seq.forall Char.IsDigit input) || len < 0 || input.Length < len then
        None
    elif len = 0 then
        Some 1
    else
        input
        |> Seq.map (fun c -> c.ToString() |> int)
        |> Seq.windowed len
        |> Seq.map (Seq.reduce (*))
        |> Seq.max
        |> Some
