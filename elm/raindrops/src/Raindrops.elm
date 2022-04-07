module Raindrops exposing (raindrops)

drops = [ ( 3, "Pling" ), ( 5, "Plang" ), ( 7, "Plong" ) ]

emptyOrDefault : Int -> String -> String
emptyOrDefault n s =
    if String.isEmpty s then
        String.fromInt n
    else
        s

raindrops : Int -> String
raindrops n = List.filterMap(\(divisor, s) ->
    if modBy divisor n == 0 then Just s else Nothing) drops
    |> String.concat |> emptyOrDefault n
