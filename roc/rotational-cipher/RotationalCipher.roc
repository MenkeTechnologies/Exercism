module [rotate]

rotate = \s, shiftKey ->
    rot = \c ->
        if c >= 'A' && c <= 'Z' then
            (c - 'A' + shiftKey) % 26 + 'A'
        else if c >= 'a' && c <= 'z' then
            (c - 'a' + shiftKey) % 26 + 'a'
        else
            c
    s |> Str.to_utf8 |> List.map rot |> Str.from_utf8 |> Result.with_default ""
