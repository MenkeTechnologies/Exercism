module Etl exposing (transform)

import Dict exposing (Dict)

transform input =
    input
        |> Dict.toList
        |> List.concatMap
            (\( score, letters ) ->
                List.map (\l -> ( String.toLower l, score )) letters
            )
        |> Dict.fromList
