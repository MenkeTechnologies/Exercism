module [slices]

slices = \s, sliceLength ->
    chars = s |> Str.to_utf8
    if sliceLength == 0 || s |> Str.is_empty || chars |> List.len < sliceLength then
        []
    else
        List.range { start: At 0, end: At ((chars |> List.len) - sliceLength) }
            |> List.map (\start -> chars |> List.sublist { start, len: sliceLength })
            |> List.map_try Str.from_utf8
            |> Result.with_default []
