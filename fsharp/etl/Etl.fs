module Etl

open System

let transform (scoresWithLetters: Map<int, char list>) : Map<char, int> =
    scoresWithLetters
    |> Seq.collect (fun kv -> kv.Value |> Seq.map (fun c -> (Char.ToLower c, kv.Key)))
    |> Map.ofSeq
