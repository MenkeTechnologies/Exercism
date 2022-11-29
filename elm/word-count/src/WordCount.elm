module WordCount exposing (wordCount)

import Dict
import Regex exposing (find, never, fromString)

wordCount s = s |> String.toLower |> find words
        |> List.foldl (\{ match } acc -> Dict.update match countWord acc ) Dict.empty

countWord curr = curr |> Maybe.map ((+) 1) |> Maybe.withDefault 1
        |> Just

words = fromString "\\w+'\\w+|\\w+" |> Maybe.withDefault Regex.never
