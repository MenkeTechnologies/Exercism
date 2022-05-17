module Anagram

let sort s = s |> Seq.sortBy id |> Seq.toList
let lower (s: string) = s.ToLower()

let findAnagrams candidates target =
    let lc = lower target
    let sorted = sort lc
    
    candidates
    |> Seq.filter (fun (c) -> c |> lower |> sort = sorted && c |> lower <> lc)
    |> Seq.toList
