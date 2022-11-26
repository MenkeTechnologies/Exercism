module RomanNumerals exposing (toRoman)

import List exposing (map, foldl, range)
import String exposing (join)

dict =
    [ ("M", 1000)
    , ("CM", 900)
    , ("D", 500)
    , ("CD", 400)
    , ("C", 100)
    , ("XC", 90)
    , ("L", 50)
    , ("XL", 40)
    , ("X", 10)
    , ("IX", 9)
    , ("V", 5)
    , ("IV", 4)
    , ("I", 1)
    ]

toRoman init =
    foldl (\(symbol, value) (acc_str, acc_n) ->
            (acc_str ++ multiplyString (acc_n // value) symbol, modBy value acc_n))
            ("", init) dict
            |> Tuple.first

multiplyString cnt s =
    range 1 cnt |>
    map(\_ -> s) |>
    join ""

