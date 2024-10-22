module SqueakyClean

open System

let transform (c: char) =
    match c with
    | '-' -> "_"
    | x when Char.IsWhiteSpace x || Char.IsDigit x -> ""
    | x when Char.IsUpper x -> $"-{Char.ToLower x}"
    | x when 'α' <= x && x <= 'ω' -> "?"
    | x -> string x

let clean (s: string) = s |> Seq.map transform |> String.Concat
