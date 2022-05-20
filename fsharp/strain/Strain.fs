module Seq

let keep f xs = Seq.foldBack (fun n acc -> if f n then n :: acc else acc) xs []
let discard f xs = xs |> keep (f >> not)
