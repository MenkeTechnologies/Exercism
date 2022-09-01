module Acronym

open System

let abbreviate (phrase: string) =
    phrase.ToUpper().Split([| ' '; '-' |], StringSplitOptions.RemoveEmptyEntries)
    |> Array.map (Seq.filter Char.IsLetter >> Seq.head)
    |> String.Concat
