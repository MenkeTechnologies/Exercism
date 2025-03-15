module [to_rna]

complement = \c ->
    when c is
        'G' -> 'C'
        'C' -> 'G'
        'T' -> 'A'
        'A' -> 'U'
        _ -> 0

to_rna = \s -> (Str.to_utf8(s) |> List.map(complement) |> Str.from_utf8) ?? ""
