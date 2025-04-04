module [find_anagrams]

find_anagrams = \subject, candidates ->
    lowerSubject = subject |> Str.to_utf8 |> List.keep_if (\v -> v < 127) |> toLower
    sortedSubject = lowerSubject |> List.sort_asc
    candidates |> List.keep_if \candidate ->
        lowerCandidate = candidate |> Str.to_utf8 |> toLower
        sortedCandidate = lowerCandidate |> List.sort_asc
        lowerCandidate != lowerSubject && sortedCandidate == sortedSubject

toLower = \s -> s |> List.map \c -> if c >= 'A' && c <= 'Z' then c + 32 else c
