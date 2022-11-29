module AtbashCipher exposing (decode, encode)

import List exposing (map, length, drop, take)
import Char exposing (toCode, fromCode, isDigit, toLower, isLower)

encode plain = plain |> digitOrLetter |> String.map transpose |> fragment
decode cipher = cipher |> digitOrLetter |> String.map transpose

digitOrLetter s = s |> String.map toLower
        |> String.filter (\c -> isLower c || isDigit c)

transpose c = if c >= 'a' && c <= 'z' then
        toCode 'z' - toCode c + toCode 'a' |> fromCode
    else c

split lst = if length lst <= 5 then [ lst ]
    else take 5 lst :: split (drop 5 lst)

fragment = String.toList
        >> split
        >> map String.fromList
        >> String.join " "
