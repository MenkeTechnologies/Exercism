module [nucleotide_counts]

nucleotide_counts = \s ->
    Str.to_utf8 s |> List.walk_try { a: 0, c: 0, g: 0, t: 0 } (\acc, c ->
        when c is
            'A' -> Ok { acc & a: acc.a + 1 }
            'C' -> Ok { acc & c: acc.c + 1 }
            'G' -> Ok { acc & g: acc.g + 1 }
            'T' -> Ok { acc & t: acc.t + 1 }
            _ -> Err Invalid)

