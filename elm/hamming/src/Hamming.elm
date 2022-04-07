module Hamming exposing (distance)

import String exposing (length, toList)

distance : String -> String -> Result String Int
distance l r =
    if length l == length r then
        List.map2 (/=) (toList l) (toList r)
        |> List.filter (\n -> n == True)
        |> List.length |> Ok
    else
        Err "left and right strands must be of equal length"
