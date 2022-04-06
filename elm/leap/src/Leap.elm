module Leap exposing (isLeapYear)


isLeapYear : Int -> Bool
isLeapYear y = remainderBy 4 y == 0 && remainderBy 100 y /= 0 || remainderBy 400 y == 0
