module Series exposing (slices)

slices size s =
    if size < 0 then
        Err "slice length cannot be negative"
    else if size == 0 then
        Err "slice length cannot be zero"
    else if String.length s < 1 then
        Err "series cannot be empty"
    else if String.length s < size then
        Err "slice length cannot be greater than series length"
    else
        String.length s - size
        |> List.range 0
        |> List.map
        (\i ->
            s
            |> String.slice i (i + size)
            |> String.toList
            |> List.map String.fromChar
            |> List.filterMap String.toInt)
            |> Ok
