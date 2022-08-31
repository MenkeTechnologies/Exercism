module Luhn

open System
open System.Text.RegularExpressions

let valid (number: string) =
    let nows = number.Replace(" ", "")
    Regex.IsMatch(nows, "\d{2,}$") &&
    (nows
       |> Seq.rev
       |> Seq.map (Char.GetNumericValue >> int)
       |> Seq.mapi (fun i n ->
           if i % 2 = 0 then n
           else if n >= 5 then 2 * n - 9
           else 2 * n)
       |> Seq.sum) % 10 = 0
