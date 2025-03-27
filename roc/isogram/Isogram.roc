module [is_isogram]

is_isogram = \s ->
    chars = s |> Str.to_utf8
        |> List.keep_if (\c -> c >= 'A' && c <= 'z')
        |> List.map (\c -> if c < 'a' then c + 32 else c)
    chars |> List.len == chars |> Set.from_list |> Set.len
