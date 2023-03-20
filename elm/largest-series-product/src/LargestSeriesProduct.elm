module LargestSeriesProduct exposing (largestProduct)
import String
import List

largestProduct length series =
    let
        numbersMaybe = String.toList series |> List.map (String.fromChar >> String.toInt)
        numbers = List.map (Maybe.withDefault 0) numbersMaybe
    in
        if length < 0 || List.any (\n -> n == Nothing) numbersMaybe then
            Nothing
        else
            List.length numbers - length |>
            List.range 0
            |> List.map (\i ->
                List.drop i numbers |> List.take length |> List.foldr (*) 1
            )
            |> List.sort
            |> List.reverse
            |> List.head
