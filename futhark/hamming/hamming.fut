def distance [n] (s1: [n]u8) (s2: [n]u8) =
  s1 |> zip s2 |> filter (\(c1, c2) -> c1 != c2) |> length |> i32.i64
