module Bob

open System
open System.Text.RegularExpressions

let response (s : string) =
    let nows = s.ToCharArray() |> Array.filter (fun c -> Char.IsWhiteSpace c |> not) |> String.Concat
    let isSilent = nows.Length = 0
    let isShouting = nows.ToCharArray() |> Array.exists Char.IsLetter && nows.ToUpper() = nows
    let isQuestion = nows.EndsWith("?")
    
    match (isSilent, isShouting, isQuestion) with
    | true,    _,    _ -> "Fine. Be that way!"
    |    _, true, true -> "Calm down, I know what I'm doing!"
    |    _, true,    _ -> "Whoa, chill out!"
    |    _,    _, true -> "Sure."
    | _                  -> "Whatever."
    
