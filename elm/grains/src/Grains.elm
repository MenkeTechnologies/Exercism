module Grains exposing (square)


square : Int -> Maybe Int
square n =
    if n < 1 || n > 64 then
        Nothing
    else
        Just (2 ^ (n - 1))
