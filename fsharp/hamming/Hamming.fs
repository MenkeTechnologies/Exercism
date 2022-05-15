module Hamming

let distance (s1: string) (s2: string): int option =
    if s1.Length = s2.Length then
        (s1, s2) ||> Seq.map2(<>)
        |> Seq.filter id
        |> Seq.length |> Some
    else None
