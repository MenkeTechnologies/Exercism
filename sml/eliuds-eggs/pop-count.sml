fun eggCount (number: int): int =
  number |> Int.toString |> explode |> List.filter (fn c => c == "1") |> List.length