module WordCount

open System.Text.RegularExpressions

let countWords phrase =
    Regex.Matches(phrase, @"\b['\w]+\b") |> Seq.map (fun m -> m.Value.ToLower())
    |> Seq.countBy id |> Map.ofSeq
