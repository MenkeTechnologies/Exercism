module ArmstrongNumbers

open System

let isArmstrongNumber (number: int): bool =
    let digits = number.ToString()
    let len = digits.Length

    digits
    |> Seq.map(fun x -> pown (Char.GetNumericValue x) len)
    |> Seq.sum
    |> (=) number
