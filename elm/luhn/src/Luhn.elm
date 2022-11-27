module Luhn exposing (..)

import String exposing (..)
import List exposing (filterMap, sum, indexedMap)

valid input =
    let
        checks = [ validContent, validLength, validChecksum ]
        cleaned = noSpace input
    in checks |> List.all (\check -> cleaned |> check)

noSpace = replace " " ""

validContent = any (Char.isDigit >> not) >> not

validLength = length >> (<) 1

toIntList = toList >> filterMap (fromChar >> toInt)

isEven = modBy 2 >> (==) 0

limitTo9 n = if n > 9 then n - 9 else n

double = (*) 2 >> limitTo9

doubleEvens = indexedMap (\i n -> if isEven (i + 1) then double n else n)

divisibleBy10 = modBy 10 >> (==) 0

validChecksum = toIntList >> List.reverse >> doubleEvens >> sum >> divisibleBy10

