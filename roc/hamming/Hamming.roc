module [distance]

distance = \s1, s2 ->
    if Str.count_utf8_bytes s1 != Str.count_utf8_bytes s2 then
        Err LengthMismatch
    else
        List.map2 (Str.to_utf8 s1) (Str.to_utf8 s2) \a, b -> if a == b then 0 else 1
        |> List.sum
        |> Ok
