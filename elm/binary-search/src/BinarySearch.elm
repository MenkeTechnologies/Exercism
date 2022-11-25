module BinarySearch exposing (find)
import Array exposing (Array)

find target lst =
    aux target 0 (Array.length lst) lst

aux target lo hi lst =
    let
        mid =
            (lo + hi) // 2
        value =
            Array.get mid lst
                |> Maybe.withDefault 0
    in
    if lo >= hi then
        Nothing
    else if target == value then
        Just mid
    else if target > value then
        aux target (mid + 1) hi lst
    else
        aux target lo mid lst
