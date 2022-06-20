let transform_entry (score, letters) = letters |>
  List.map (fun c -> Char.lowercase_ascii c, score)

let transform lst = lst |>
  List.map transform_entry |>
  List.concat |>
  List.sort (fun a b -> Char.compare (fst a) (fst b))
