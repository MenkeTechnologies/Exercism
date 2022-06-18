let raindrop n =
  [(3, "Pling"); (5, "Plang"); (7, "Plong")]
  |> List.fold_left (fun acc (i, s) -> if n mod i = 0 then acc ^ s else acc) ""
  |> (fun s -> if s == "" then Int.to_string n else s)
