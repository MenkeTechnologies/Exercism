module AtbashCipher

open System
open System.Text.RegularExpressions

let cipher =
    let alpha = [ 'a' .. 'z' ]
    (alpha, List.rev alpha)
    ||> List.zip
    |> Map.ofList

let encode (words: string) =
    Regex.Replace(words.ToLower(), @"[^\d\w]", "")
    |> Seq.map (fun c ->
        if Char.IsDigit c then c else cipher[c])
    |> Seq.chunkBySize 5
    |> Seq.map System.String
    |> String.concat " "

let decode (code: string) = (encode code).Replace(" ", "")
