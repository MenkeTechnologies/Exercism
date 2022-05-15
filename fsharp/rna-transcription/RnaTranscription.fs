module RnaTranscription

open System

let dict = [ 'G', 'C'; 'C', 'G'; 'T', 'A'; 'A', 'U' ] |> Map.ofList

let toRna (dna: string): string =
    dna |> Seq.map (fun c -> dict[c]) |> String.Concat
