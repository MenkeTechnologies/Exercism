module [transform]

transform : Dict U64 (List U8) -> Dict U8 U64
transform = \legacy ->
    legacy
    |> Dict.to_list
    |> List.walk (Dict.empty {}) \acc, (score, letters) -> letters |> List.walk acc \acc2, letter -> Dict.insert acc2 (letter - 'A' + 'a') score
