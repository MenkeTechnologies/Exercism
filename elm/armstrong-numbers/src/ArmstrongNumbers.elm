module ArmstrongNumbers exposing (isArmstrongNumber)

import List exposing (map, sum, length)
import String exposing (fromInt, toList)

zero = Char.toCode '0'

isArmstrongNumber n =
    let digits = n |> fromInt |> toList |> map Char.toCode
            |> map (\c -> c - zero)
        len = length digits
    in digits |> map (\digit -> digit ^ len) |> sum |> (==) n
