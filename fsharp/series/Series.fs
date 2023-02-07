module Series

open System

let slices (s: string) len =
    if len < 1 || s.Length < len then
        None
    else
        s
        |> Seq.windowed len
        |> Seq.map (Seq.toArray >> String)
        |> Seq.toList
        |> Some
