module Pangram exposing (isPangram)


isPangram : String -> Bool
isPangram sentence =
    List.all (\ch -> String.contains ch (String.toLower sentence))
    (List.range (Char.toCode 'a') (Char.toCode 'z')
    |> List.map Char.fromCode |> List.map String.fromChar)
