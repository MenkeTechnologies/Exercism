module Isogram exposing (isIsogram)
import Set

isIsogram : String -> Bool
isIsogram sentence =
    let
        list = String.toList sentence |> List.filter Char.isAlpha |> List.map Char.toLower
        set = list |> Set.fromList
    in List.length list == Set.size set
